
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int __llvm_profile_header ;
typedef int FILE ;


 int COMPILER_RT_FTRUNCATE (int *,int ) ;
 char* MAP_FAILED ;
 int MAP_FILE ;
 int MAP_SHARED ;
 int PROF_ERR (char*,int ) ;
 int PROF_WARN (char*,char*) ;
 int PROT_READ ;
 int SEEK_END ;
 int SEEK_SET ;
 scalar_t__ __llvm_profile_check_compatibility (char*,int) ;
 int __llvm_profile_get_size_for_buffer () ;
 int __llvm_profile_merge_from_buffer (char*,int) ;
 int errno ;
 int fileno (int *) ;
 int fseek (int *,long,int ) ;
 int ftell (int *) ;
 char* mmap (int *,int,int ,int,int ,int ) ;
 int munmap (char*,int) ;
 int strerror (int ) ;

__attribute__((used)) static int doProfileMerging(FILE *ProfileFile, int *MergeDone) {
  uint64_t ProfileFileSize;
  char *ProfileBuffer;

  if (fseek(ProfileFile, 0L, SEEK_END) == -1) {
    PROF_ERR("Unable to merge profile data, unable to get size: %s\n",
             strerror(errno));
    return -1;
  }
  ProfileFileSize = ftell(ProfileFile);


  if (fseek(ProfileFile, 0L, SEEK_SET) == -1) {
    PROF_ERR("Unable to merge profile data, unable to rewind: %s\n",
             strerror(errno));
    return -1;
  }


  if (ProfileFileSize < sizeof(__llvm_profile_header)) {
    if (ProfileFileSize)
      PROF_WARN("Unable to merge profile data: %s\n",
                "source profile file is too small.");
    return 0;
  }

  ProfileBuffer = mmap(((void*)0), ProfileFileSize, PROT_READ, MAP_SHARED | MAP_FILE,
                       fileno(ProfileFile), 0);
  if (ProfileBuffer == MAP_FAILED) {
    PROF_ERR("Unable to merge profile data, mmap failed: %s\n",
             strerror(errno));
    return -1;
  }

  if (__llvm_profile_check_compatibility(ProfileBuffer, ProfileFileSize)) {
    (void)munmap(ProfileBuffer, ProfileFileSize);
    PROF_WARN("Unable to merge profile data: %s\n",
              "source profile file is not compatible.");
    return 0;
  }


  __llvm_profile_merge_from_buffer(ProfileBuffer, ProfileFileSize);



  COMPILER_RT_FTRUNCATE(ProfileFile, __llvm_profile_get_size_for_buffer());

  (void)munmap(ProfileBuffer, ProfileFileSize);
  *MergeDone = 1;

  return 0;
}
