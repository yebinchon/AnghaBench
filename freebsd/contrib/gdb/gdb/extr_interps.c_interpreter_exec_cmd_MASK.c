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
struct interp {int dummy; } ;

/* Variables and functions */
 char** FUNC0 (char*) ; 
 struct interp* current_interpreter ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct interp*,char*) ; 
 struct interp* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct interp*) ; 
 int FUNC5 (struct interp*,int) ; 

__attribute__((used)) static void
FUNC6 (char *args, int from_tty)
{
  struct interp *old_interp, *interp_to_use;
  char **prules = NULL;
  char **trule = NULL;
  unsigned int nrules;
  unsigned int i;
  int old_quiet, use_quiet;

  prules = FUNC0 (args);
  if (prules == NULL)
    {
      FUNC1 ("unable to parse arguments");
    }

  nrules = 0;
  if (prules != NULL)
    {
      for (trule = prules; *trule != NULL; trule++)
	{
	  nrules++;
	}
    }

  if (nrules < 2)
    FUNC1 ("usage: interpreter-exec <interpreter> [ <command> ... ]");

  old_interp = current_interpreter;

  interp_to_use = FUNC3 (prules[0]);
  if (interp_to_use == NULL)
    FUNC1 ("Could not find interpreter \"%s\".", prules[0]);

  /* Temporarily set interpreters quiet */
  old_quiet = FUNC5 (old_interp, 1);
  use_quiet = FUNC5 (interp_to_use, 1);

  if (!FUNC4 (interp_to_use))
    FUNC1 ("Could not switch to interpreter \"%s\".", prules[0]);

  for (i = 1; i < nrules; i++)
    {
      if (!FUNC2 (interp_to_use, prules[i]))
	{
	  FUNC4 (old_interp);
	  FUNC5 (interp_to_use, old_quiet);
	  FUNC1 ("error in command: \"%s\".", prules[i]);
	  break;
	}
    }

  FUNC4 (old_interp);
  FUNC5 (interp_to_use, use_quiet);
  FUNC5 (old_interp, old_quiet);
}