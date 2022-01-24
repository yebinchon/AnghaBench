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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static FILE *FUNC10(const char *ProfileFileName, int *MergeDone) {
  FILE *ProfileFile = NULL;
  int rc;

  ProfileFile = FUNC6();
  if (ProfileFile) {
    FUNC7(ProfileFile);
  } else {
    FUNC2(ProfileFileName);
    ProfileFile = FUNC8(ProfileFileName);
  }
  if (!ProfileFile)
    return NULL;

  rc = FUNC3(ProfileFile, MergeDone);
  if (rc || (!*MergeDone && FUNC0(ProfileFile, 0L)) ||
      FUNC5(ProfileFile, 0L, SEEK_SET) == -1) {
    FUNC1("Profile Merging of file %s failed: %s\n", ProfileFileName,
             FUNC9(errno));
    FUNC4(ProfileFile);
    return NULL;
  }
  return ProfileFile;
}