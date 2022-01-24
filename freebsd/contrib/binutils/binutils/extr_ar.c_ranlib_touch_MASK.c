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
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int O_BINARY ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  bfd_archive ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char***) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ bfd_error_file_ambiguously_recognized ; 
 int /*<<< orphan*/  bfd_error_system_call ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char const*,int) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC11 (char**) ; 
 int FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (char**) ; 
 int FUNC14 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char const*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 

__attribute__((used)) static int
FUNC17 (const char *archname)
{
#ifdef __GO32__
  /* I don't think updating works on go32.  */
  ranlib_only (archname);
#else
  int f;
  bfd *arch;
  char **matching;

  if (FUNC12 (archname) < 1)
    return 1;
  f = FUNC14 (archname, O_RDWR | O_BINARY, 0);
  if (f < 0)
    {
      FUNC8 (bfd_error_system_call);
      FUNC3 (archname);
    }

  arch = FUNC4 (archname, (const char *) NULL, f);
  if (arch == NULL)
    FUNC3 (archname);
  if (! FUNC1 (arch, bfd_archive, &matching))
    {
      FUNC7 (archname);
      if (FUNC5 () == bfd_error_file_ambiguously_recognized)
	{
	  FUNC13 (matching);
	  FUNC11 (matching);
	}
      FUNC16 (1);
    }

  if (! FUNC6 (arch))
    /* xgettext:c-format */
    FUNC10 (FUNC0("%s: no archive map to update"), archname);

  FUNC9 (arch);

  if (! FUNC2 (arch))
    FUNC3 (archname);
#endif
  return 0;
}