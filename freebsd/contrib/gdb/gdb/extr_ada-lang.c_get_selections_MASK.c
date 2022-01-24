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
 char* FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 char* FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int FUNC7 (char*,char**,int) ; 

int
FUNC8 (int *choices, int n_choices, int max_results,
		int is_all_choice, char *annotation_suffix)
{
  int i;
  char *args;
  const char *prompt;
  int n_chosen;
  int first_choice = is_all_choice ? 2 : 1;

  prompt = FUNC4 ("PS2");
  if (prompt == NULL)
    prompt = ">";

  FUNC6 ("%s ", prompt);
  FUNC3 (gdb_stdout);

  args = FUNC0 ((char *) NULL, 0, annotation_suffix);

  if (args == NULL)
    FUNC2 ("one or more choice numbers");

  n_chosen = 0;

  /* Set choices[0 .. n_chosen-1] to the users' choices in ascending 
     order, as given in args.   Choices are validated. */
  while (1)
    {
      char *args2;
      int choice, j;

      while (FUNC5 (*args))
	args += 1;
      if (*args == '\0' && n_chosen == 0)
	FUNC2 ("one or more choice numbers");
      else if (*args == '\0')
	break;

      choice = FUNC7 (args, &args2, 10);
      if (args == args2 || choice < 0
	  || choice > n_choices + first_choice - 1)
	FUNC1 ("Argument must be choice number");
      args = args2;

      if (choice == 0)
	FUNC1 ("cancelled");

      if (choice < first_choice)
	{
	  n_chosen = n_choices;
	  for (j = 0; j < n_choices; j += 1)
	    choices[j] = j;
	  break;
	}
      choice -= first_choice;

      for (j = n_chosen - 1; j >= 0 && choice < choices[j]; j -= 1)
	{
	}

      if (j < 0 || choice != choices[j])
	{
	  int k;
	  for (k = n_chosen - 1; k > j; k -= 1)
	    choices[k + 1] = choices[k];
	  choices[j + 1] = choice;
	  n_chosen += 1;
	}
    }

  if (n_chosen > max_results)
    FUNC1 ("Select no more than %d of the above", max_results);

  return n_chosen;
}