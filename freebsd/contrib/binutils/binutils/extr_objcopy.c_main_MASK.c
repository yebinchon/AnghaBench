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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  LC_MESSAGES ; 
 int /*<<< orphan*/  LOCALEDIR ; 
 int /*<<< orphan*/  LOCALS_UNDEF ; 
 int /*<<< orphan*/  PACKAGE ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STRIP_UNDEF ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char**) ; 
 int /*<<< orphan*/  discard_locals ; 
 int /*<<< orphan*/  FUNC6 (int*,char***) ; 
 int is_strip ; 
 char* program_name ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int status ; 
 int /*<<< orphan*/  FUNC9 (int,char**) ; 
 int /*<<< orphan*/  strip_symbols ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

int
FUNC13 (int argc, char *argv[])
{
#if defined (HAVE_SETLOCALE) && defined (HAVE_LC_MESSAGES)
  setlocale (LC_MESSAGES, "");
#endif
#if defined (HAVE_SETLOCALE)
  setlocale (LC_CTYPE, "");
#endif
  FUNC4 (PACKAGE, LOCALEDIR);
  FUNC11 (PACKAGE);

  program_name = argv[0];
  FUNC12 (program_name);

  FUNC2 (program_name, 0);

  FUNC6 (&argc, &argv);

  strip_symbols = STRIP_UNDEF;
  discard_locals = LOCALS_UNDEF;

  FUNC3 ();
  FUNC7 ();

  if (is_strip < 0)
    {
      int i = FUNC10 (program_name);
#ifdef HAVE_DOS_BASED_FILE_SYSTEM
      /* Drop the .exe suffix, if any.  */
      if (i > 4 && FILENAME_CMP (program_name + i - 4, ".exe") == 0)
	{
	  i -= 4;
	  program_name[i] = '\0';
	}
#endif
      is_strip = (i >= 5 && FUNC1 (program_name + i - 5, "strip") == 0);
    }

  if (is_strip)
    FUNC9 (argc, argv);
  else
    FUNC5 (argc, argv);

  FUNC0 (program_name);

  return status;
}