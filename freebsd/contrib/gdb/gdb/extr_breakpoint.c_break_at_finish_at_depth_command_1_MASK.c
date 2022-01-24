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
struct frame_info {int dummy; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ default_breakpoint_valid ; 
 struct frame_info* deprecated_selected_frame ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (scalar_t__,char**,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC3 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct frame_info* FUNC5 (char*) ; 
 char* FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (int) ; 
 char* FUNC12 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC13 (char *arg, int flag, int from_tty)
{
  struct frame_info *frame;
  CORE_ADDR low, high, selected_pc = 0;
  char *extra_args = NULL;
  char *level_arg;
  int extra_args_len = 0, if_arg = 0;

  if (!arg ||
      (arg[0] == 'i' && arg[1] == 'f' && (arg[2] == ' ' || arg[2] == '\t')))
    {

      if (default_breakpoint_valid)
	{
	  if (deprecated_selected_frame)
	    {
	      selected_pc = FUNC3 (deprecated_selected_frame);
	      if (arg)
		if_arg = 1;
	    }
	  else
	    FUNC1 ("No selected frame.");
	}
      else
	FUNC1 ("No default breakpoint address now.");
    }
  else
    {
      extra_args = FUNC6 (arg, ' ');
      if (extra_args)
	{
	  extra_args++;
	  extra_args_len = FUNC8 (extra_args);
	  level_arg = (char *) FUNC11 (extra_args - arg);
	  FUNC9 (level_arg, arg, extra_args - arg - 1);
	  level_arg[extra_args - arg - 1] = '\0';
	}
      else
	{
	  level_arg = (char *) FUNC11 (FUNC8 (arg) + 1);
	  FUNC7 (level_arg, arg);
	}

      frame = FUNC5 (level_arg);
      if (frame)
	selected_pc = FUNC3 (frame);
      else
	selected_pc = 0;
    }
  if (if_arg)
    {
      extra_args = arg;
      extra_args_len = FUNC8 (arg);
    }

  if (selected_pc)
    {
      if (FUNC2 (selected_pc, (char **) NULL, &low, &high))
	{
	  char *addr_string;
	  if (extra_args_len)
	    addr_string = FUNC12 ("*0x%s %s", FUNC4 (high), extra_args);
	  else
	    addr_string = FUNC12 ("*0x%s", FUNC4 (high));
	  FUNC0 (addr_string, flag, from_tty, NULL);
	  FUNC10 (addr_string);
	}
      else
	FUNC1 ("No function contains the specified address");
    }
  else
    FUNC1 ("Unable to set breakpoint at procedure exit");
}