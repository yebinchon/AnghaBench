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
typedef  scalar_t__ bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  BINDIR ; 
 char* SCRIPTDIR ; 
 int /*<<< orphan*/  TOOLBINDIR ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ,char*) ; 
 char* program_name ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,size_t) ; 
 char* FUNC5 (char*,char) ; 
 char* FUNC6 (size_t) ; 

__attribute__((used)) static void
FUNC7 (void)
{
  char *end, *dir;
  size_t dirlen;
  bfd_boolean found;

  dir = FUNC2 (program_name, BINDIR, SCRIPTDIR);
  if (dir)
    {
      found = FUNC0 (dir);
      FUNC1 (dir);
      if (found)
	return;
    }

  dir = FUNC2 (program_name, TOOLBINDIR, SCRIPTDIR);
  if (dir)
    {
      found = FUNC0 (dir);
      FUNC1 (dir);
      if (found)
	return;
    }

  if (FUNC0 (SCRIPTDIR))
    /* We've been installed normally.  */
    return;

  /* Look for "ldscripts" in the dir where our binary is.  */
  end = FUNC5 (program_name, '/');
#ifdef HAVE_DOS_BASED_FILE_SYSTEM
  {
    /* We could have \foo\bar, or /foo\bar.  */
    char *bslash = strrchr (program_name, '\\');

    if (end == NULL || (bslash != NULL && bslash > end))
      end = bslash;
  }
#endif

  if (end == NULL)
    /* Don't look for ldscripts in the current directory.  There is
       too much potential for confusion.  */
    return;

  dirlen = end - program_name;
  /* Make a copy of program_name in dir.
     Leave room for later "/../lib".  */
  dir = FUNC6 (dirlen + 8);
  FUNC4 (dir, program_name, dirlen);
  dir[dirlen] = '\0';

  if (FUNC0 (dir))
    {
      FUNC1 (dir);
      return;
    }

  /* Look for "ldscripts" in <the dir where our binary is>/../lib.  */
  FUNC3 (dir + dirlen, "/../lib");
  FUNC0 (dir);
  FUNC1 (dir);
}