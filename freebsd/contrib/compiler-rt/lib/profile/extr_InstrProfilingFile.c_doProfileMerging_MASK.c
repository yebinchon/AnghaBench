#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  __llvm_profile_header ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* MAP_FAILED ; 
 int MAP_FILE ; 
 int MAP_SHARED ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(FILE *ProfileFile, int *MergeDone) {
  uint64_t ProfileFileSize;
  char *ProfileBuffer;

  if (FUNC7(ProfileFile, 0L, SEEK_END) == -1) {
    FUNC1("Unable to merge profile data, unable to get size: %s\n",
             FUNC11(errno));
    return -1;
  }
  ProfileFileSize = FUNC8(ProfileFile);

  /* Restore file offset.  */
  if (FUNC7(ProfileFile, 0L, SEEK_SET) == -1) {
    FUNC1("Unable to merge profile data, unable to rewind: %s\n",
             FUNC11(errno));
    return -1;
  }

  /* Nothing to merge.  */
  if (ProfileFileSize < sizeof(__llvm_profile_header)) {
    if (ProfileFileSize)
      FUNC2("Unable to merge profile data: %s\n",
                "source profile file is too small.");
    return 0;
  }

  ProfileBuffer = FUNC9(NULL, ProfileFileSize, PROT_READ, MAP_SHARED | MAP_FILE,
                       FUNC6(ProfileFile), 0);
  if (ProfileBuffer == MAP_FAILED) {
    FUNC1("Unable to merge profile data, mmap failed: %s\n",
             FUNC11(errno));
    return -1;
  }

  if (FUNC3(ProfileBuffer, ProfileFileSize)) {
    (void)FUNC10(ProfileBuffer, ProfileFileSize);
    FUNC2("Unable to merge profile data: %s\n",
              "source profile file is not compatible.");
    return 0;
  }

  /* Now start merging */
  FUNC5(ProfileBuffer, ProfileFileSize);

  // Truncate the file in case merging of value profile did not happend to
  // prevent from leaving garbage data at the end of the profile file.
  FUNC0(ProfileFile, FUNC4());

  (void)FUNC10(ProfileBuffer, ProfileFileSize);
  *MergeDone = 1;

  return 0;
}