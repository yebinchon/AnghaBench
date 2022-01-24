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
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  LC_MESSAGES ; 
 int /*<<< orphan*/  LOCALEDIR ; 
 int /*<<< orphan*/  PACKAGE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * cmdline_dump_sects ; 
 int /*<<< orphan*/ * dump_sects ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,char***) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ num_cmdline_dump_sects ; 
 scalar_t__ num_dump_sects ; 
 int optind ; 
 int /*<<< orphan*/  FUNC7 (int,char**) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int show_name ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int
FUNC11 (int argc, char **argv)
{
  int err;

#if defined (HAVE_SETLOCALE) && defined (HAVE_LC_MESSAGES)
  setlocale (LC_MESSAGES, "");
#endif
#if defined (HAVE_SETLOCALE)
  setlocale (LC_CTYPE, "");
#endif
  FUNC1 (PACKAGE, LOCALEDIR);
  FUNC10 (PACKAGE);

  FUNC3 (&argc, &argv);

  FUNC7 (argc, argv);

  if (num_dump_sects > 0)
    {
      /* Make a copy of the dump_sects array.  */
      cmdline_dump_sects = FUNC5 (num_dump_sects);
      if (cmdline_dump_sects == NULL)
	FUNC2 (FUNC0("Out of memory allocating dump request table.\n"));
      else
	{
	  FUNC6 (cmdline_dump_sects, dump_sects, num_dump_sects);
	  num_cmdline_dump_sects = num_dump_sects;
	}
    }

  if (optind < (argc - 1))
    show_name = 1;

  err = 0;
  while (optind < argc)
    err |= FUNC8 (argv[optind++]);

  if (dump_sects != NULL)
    FUNC4 (dump_sects);
  if (cmdline_dump_sects != NULL)
    FUNC4 (cmdline_dump_sects);

  return err;
}