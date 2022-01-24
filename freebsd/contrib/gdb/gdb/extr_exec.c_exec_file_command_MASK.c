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
 char** FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  xfree ; 

__attribute__((used)) static void
FUNC8 (char *args, int from_tty)
{
  char **argv;
  char *filename;
  
  FUNC6 (from_tty);

  if (args)
    {
      /* Scan through the args and pick up the first non option arg
         as the filename.  */

      argv = FUNC0 (args);
      if (argv == NULL)
        FUNC5 (0);

      FUNC4 (argv);

      for (; (*argv != NULL) && (**argv == '-'); argv++)
        {;
        }
      if (*argv == NULL)
        FUNC1 ("No executable file name was specified");

      filename = FUNC7 (*argv);
      FUNC3 (xfree, filename);
      FUNC2 (filename, from_tty);
    }
  else
    FUNC2 (NULL, from_tty);
}