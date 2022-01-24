#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {long fpreg_mask; long fpreg_offset; long reg_mask; long reg_offset; } ;
typedef  TYPE_1__ procS ;

/* Variables and functions */
 int /*<<< orphan*/  ECOFF_DEBUGGING ; 
 scalar_t__ IS_ELF ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* cur_proc_ptr ; 
 int /*<<< orphan*/  FUNC2 () ; 
 long FUNC3 () ; 
 char FUNC4 (long*) ; 
 int /*<<< orphan*/  input_line_pointer ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6 (int reg_type)
{
#ifdef OBJ_ELF
  if (IS_ELF && !ECOFF_DEBUGGING)
    {
      long mask, off;

      if (cur_proc_ptr == (procS *) NULL)
	{
	  as_warn (_(".mask/.fmask outside of .ent"));
	  demand_empty_rest_of_line ();
	  return;
	}

      if (get_absolute_expression_and_terminator (&mask) != ',')
	{
	  as_warn (_("Bad .mask/.fmask directive"));
	  --input_line_pointer;
	  demand_empty_rest_of_line ();
	  return;
	}

      off = get_absolute_expression ();

      if (reg_type == 'F')
	{
	  cur_proc_ptr->fpreg_mask = mask;
	  cur_proc_ptr->fpreg_offset = off;
	}
      else
	{
	  cur_proc_ptr->reg_mask = mask;
	  cur_proc_ptr->reg_offset = off;
	}

      demand_empty_rest_of_line ();
    }
  else
#endif /* OBJ_ELF */
    FUNC5 (reg_type);
}