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
 scalar_t__ FUNC0 (char*,char*) ; 
 char* DEFAULT_EMULATION ; 
 int /*<<< orphan*/  EMULATION_ENVIRON ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static char *
FUNC5 (int argc, char **argv)
{
  char *emulation;
  int i;

  emulation = FUNC3 (EMULATION_ENVIRON);
  if (emulation == NULL)
    emulation = DEFAULT_EMULATION;

  for (i = 1; i < argc; i++)
    {
      if (FUNC0 (argv[i], "-m"))
	{
	  if (argv[i][2] == '\0')
	    {
	      /* -m EMUL */
	      if (i < argc - 1)
		{
		  emulation = argv[i + 1];
		  i++;
		}
	      else
		FUNC2 (FUNC1("%P%F: missing argument to -m\n"));
	    }
	  else if (FUNC4 (argv[i], "-mips1") == 0
		   || FUNC4 (argv[i], "-mips2") == 0
		   || FUNC4 (argv[i], "-mips3") == 0
		   || FUNC4 (argv[i], "-mips4") == 0
		   || FUNC4 (argv[i], "-mips5") == 0
		   || FUNC4 (argv[i], "-mips32") == 0
		   || FUNC4 (argv[i], "-mips32r2") == 0
		   || FUNC4 (argv[i], "-mips64") == 0
		   || FUNC4 (argv[i], "-mips64r2") == 0)
	    {
	      /* FIXME: The arguments -mips1, -mips2, -mips3, etc. are
		 passed to the linker by some MIPS compilers.  They
		 generally tell the linker to use a slightly different
		 library path.  Perhaps someday these should be
		 implemented as emulations; until then, we just ignore
		 the arguments and hope that nobody ever creates
		 emulations named ips1, ips2 or ips3.  */
	    }
	  else if (FUNC4 (argv[i], "-m486") == 0)
	    {
	      /* FIXME: The argument -m486 is passed to the linker on
		 some Linux systems.  Hope that nobody creates an
		 emulation named 486.  */
	    }
	  else
	    {
	      /* -mEMUL */
	      emulation = &argv[i][2];
	    }
	}
    }

  return emulation;
}