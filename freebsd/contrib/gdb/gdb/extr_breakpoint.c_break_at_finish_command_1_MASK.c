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
struct symtabs_and_lines {int nelts; struct symtab_and_line* sals; } ;
struct symtab_and_line {int /*<<< orphan*/  pc; } ;
struct symtab {int dummy; } ;
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int /*<<< orphan*/ *) ; 
 struct symtabs_and_lines FUNC1 (char**,int,struct symtab*,int /*<<< orphan*/ ,char***,int /*<<< orphan*/ *) ; 
 scalar_t__ default_breakpoint_valid ; 
 scalar_t__ deprecated_selected_frame ; 
 int /*<<< orphan*/  FUNC2 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 struct cleanup* FUNC6 (int /*<<< orphan*/  (*) (char*),struct symtab_and_line*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*,char) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ FUNC13 (int) ; 
 char* FUNC14 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC15 (char *arg, int flag, int from_tty)
{
  char *addr_string, *break_string, *beg_addr_string;
  CORE_ADDR low, high;
  struct symtabs_and_lines sals;
  struct symtab_and_line sal;
  struct cleanup *old_chain;
  char *extra_args = NULL;
  int extra_args_len = 0;
  int i, if_arg = 0;

  if (!arg ||
      (arg[0] == 'i' && arg[1] == 'f' && (arg[2] == ' ' || arg[2] == '\t')))
    {
      if (default_breakpoint_valid)
	{
	  if (deprecated_selected_frame)
	    {
	      addr_string = FUNC14 ("*0x%s",
					FUNC7 (FUNC5 (deprecated_selected_frame)));
	      if (arg)
		if_arg = 1;
	    }
	  else
	    FUNC3 ("No selected frame.");
	}
      else
	FUNC3 ("No default breakpoint address now.");
    }
  else
    {
      addr_string = (char *) FUNC13 (FUNC10 (arg) + 1);
      FUNC9 (addr_string, arg);
    }

  if (if_arg)
    {
      extra_args = arg;
      extra_args_len = FUNC10 (arg);
    }
  else if (arg)
    {
      /* get the stuff after the function name or address */
      extra_args = FUNC8 (arg, ' ');
      if (extra_args)
	{
	  extra_args++;
	  extra_args_len = FUNC10 (extra_args);
	}
    }

  sals.sals = NULL;
  sals.nelts = 0;

  beg_addr_string = addr_string;
  sals = FUNC1 (&addr_string, 1, (struct symtab *) NULL, 0,
			(char ***) NULL, NULL);

  FUNC12 (beg_addr_string);
  old_chain = FUNC6 (xfree, sals.sals);
  for (i = 0; (i < sals.nelts); i++)
    {
      sal = sals.sals[i];
      if (FUNC4 (sal.pc, (char **) NULL, &low, &high))
	{
	  break_string;
	  if (extra_args_len)
	    break_string = FUNC14 ("*0x%s %s", FUNC7 (high),
				       extra_args);
	  else
	    break_string = FUNC14 ("*0x%s", FUNC7 (high));
	  FUNC0 (break_string, flag, from_tty, NULL);
	  FUNC12 (break_string);
	}
      else
	FUNC3 ("No function contains the specified address");
    }
  if (sals.nelts > 1)
    {
      FUNC11 ("Multiple breakpoints were set.\n");
      FUNC11 ("Use the \"delete\" command to delete unwanted breakpoints.");
    }
  FUNC2 (old_chain);
}