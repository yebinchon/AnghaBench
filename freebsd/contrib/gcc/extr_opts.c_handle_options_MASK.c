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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 unsigned int FUNC3 (char const**,unsigned int) ; 
 int /*<<< orphan*/  main_input_baselength ; 
 int /*<<< orphan*/  main_input_basename ; 
 char const* main_input_filename ; 

__attribute__((used)) static void
FUNC4 (unsigned int argc, const char **argv, unsigned int lang_mask)
{
  unsigned int n, i;

  for (i = 1; i < argc; i += n)
    {
      const char *opt = argv[i];

      /* Interpret "-" or a non-switch as a file name.  */
      if (opt[0] != '-' || opt[1] == '\0')
	{
	  if (main_input_filename == NULL)
	    {
	    main_input_filename = opt;
	      main_input_baselength
		= FUNC1 (main_input_filename, &main_input_basename);
	    }
	  FUNC0 (opt);
	  n = 1;
	  continue;
	}

      n = FUNC3 (argv + i, lang_mask);

      if (!n)
	{
	  n = 1;
	  FUNC2 ("unrecognized command line option \"%s\"", opt);
	}
    }
}