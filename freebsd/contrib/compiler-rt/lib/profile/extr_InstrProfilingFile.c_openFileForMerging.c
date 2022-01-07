
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ COMPILER_RT_FTRUNCATE (int *,long) ;
 int PROF_ERR (char*,char const*,int ) ;
 int SEEK_SET ;
 int createProfileDir (char const*) ;
 int doProfileMerging (int *,int*) ;
 int errno ;
 int fclose (int *) ;
 int fseek (int *,long,int ) ;
 int * getProfileFile () ;
 int lprofLockFileHandle (int *) ;
 int * lprofOpenFileEx (char const*) ;
 int strerror (int ) ;

__attribute__((used)) static FILE *openFileForMerging(const char *ProfileFileName, int *MergeDone) {
  FILE *ProfileFile = ((void*)0);
  int rc;

  ProfileFile = getProfileFile();
  if (ProfileFile) {
    lprofLockFileHandle(ProfileFile);
  } else {
    createProfileDir(ProfileFileName);
    ProfileFile = lprofOpenFileEx(ProfileFileName);
  }
  if (!ProfileFile)
    return ((void*)0);

  rc = doProfileMerging(ProfileFile, MergeDone);
  if (rc || (!*MergeDone && COMPILER_RT_FTRUNCATE(ProfileFile, 0L)) ||
      fseek(ProfileFile, 0L, SEEK_SET) == -1) {
    PROF_ERR("Profile Merging of file %s failed: %s\n", ProfileFileName,
             strerror(errno));
    fclose(ProfileFile);
    return ((void*)0);
  }
  return ProfileFile;
}
