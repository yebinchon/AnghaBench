#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* FilenamePat; scalar_t__ PNS; } ;
typedef  scalar_t__ ProfileNameSpecifier ;

/* Variables and functions */
 char* DefaultProfileName ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char*) ; 
 TYPE_1__ lprofCurFilename ; 
 scalar_t__ FUNC3 (char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(const char *FilenamePat,
                                ProfileNameSpecifier PNS,
                                unsigned CopyFilenamePat) {

  const char *OldFilenamePat = lprofCurFilename.FilenamePat;
  ProfileNameSpecifier OldPNS = lprofCurFilename.PNS;

  if (PNS < OldPNS)
    return;

  if (!FilenamePat)
    FilenamePat = DefaultProfileName;

  if (OldFilenamePat && !FUNC5(OldFilenamePat, FilenamePat)) {
    lprofCurFilename.PNS = PNS;
    return;
  }

  /* When PNS >= OldPNS, the last one wins. */
  if (!FilenamePat || FUNC3(FilenamePat, CopyFilenamePat))
    FUNC4();
  lprofCurFilename.PNS = PNS;

  if (!OldFilenamePat) {
    if (FUNC2("LLVM_PROFILE_VERBOSE"))
      FUNC0("Set profile file path to \"%s\" via %s.\n",
                lprofCurFilename.FilenamePat, FUNC1(PNS));
  } else {
    if (FUNC2("LLVM_PROFILE_VERBOSE"))
      FUNC0("Override old profile path \"%s\" via %s to \"%s\" via %s.\n",
                OldFilenamePat, FUNC1(OldPNS), lprofCurFilename.FilenamePat,
                FUNC1(PNS));
  }

  FUNC6();
}