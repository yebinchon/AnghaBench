#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int constant; } ;
struct TYPE_4__ {unsigned int boundary; scalar_t__ where_pad; TYPE_1__ size; int /*<<< orphan*/  slot_offset; int /*<<< orphan*/  offset; } ;
struct arg_data {scalar_t__ reg; scalar_t__ partial; int mode; void* stack_slot; void* stack; TYPE_2__ locate; int /*<<< orphan*/  tree_value; int /*<<< orphan*/  pass_on_stack; } ;
typedef  scalar_t__ rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int BITS_PER_UNIT ; 
 scalar_t__ CONST_INT ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  MODE_INT ; 
 scalar_t__ PLUS ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int VOIDmode ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 scalar_t__ downward ; 
 void* FUNC6 (int,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC8 (unsigned int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14 (struct arg_data *args, rtx argblock, int num_actuals)
{
  if (argblock)
    {
      rtx arg_reg = argblock;
      int i, arg_offset = 0;

      if (FUNC2 (argblock) == PLUS)
	arg_reg = FUNC5 (argblock, 0), arg_offset = FUNC3 (FUNC5 (argblock, 1));

      for (i = 0; i < num_actuals; i++)
	{
	  rtx offset = FUNC0 (args[i].locate.offset);
	  rtx slot_offset = FUNC0 (args[i].locate.slot_offset);
	  rtx addr;
	  unsigned int align, boundary;
	  unsigned int units_on_stack = 0;
	  enum machine_mode partial_mode = VOIDmode;

	  /* Skip this parm if it will not be passed on the stack.  */
	  if (! args[i].pass_on_stack
	      && args[i].reg != 0
	      && args[i].partial == 0)
	    continue;

	  if (FUNC2 (offset) == CONST_INT)
	    addr = FUNC9 (arg_reg, FUNC3 (offset));
	  else
	    addr = FUNC7 (Pmode, arg_reg, offset);

	  addr = FUNC9 (addr, arg_offset);

	  if (args[i].partial != 0)
	    {
	      /* Only part of the parameter is being passed on the stack.
		 Generate a simple memory reference of the correct size.  */
	      units_on_stack = args[i].locate.size.constant;
	      partial_mode = FUNC8 (units_on_stack * BITS_PER_UNIT,
					    MODE_INT, 1);
	      args[i].stack = FUNC6 (partial_mode, addr);
	      FUNC13 (args[i].stack, FUNC1 (units_on_stack));
	    }
	  else
	    {
	      args[i].stack = FUNC6 (args[i].mode, addr);
	      FUNC12 (args[i].stack,
				  FUNC4 (args[i].tree_value), 1);
	    }
	  align = BITS_PER_UNIT;
	  boundary = args[i].locate.boundary;
	  if (args[i].locate.where_pad != downward)
	    align = boundary;
	  else if (FUNC2 (offset) == CONST_INT)
	    {
	      align = FUNC3 (offset) * BITS_PER_UNIT | boundary;
	      align = align & -align;
	    }
	  FUNC11 (args[i].stack, align);

	  if (FUNC2 (slot_offset) == CONST_INT)
	    addr = FUNC9 (arg_reg, FUNC3 (slot_offset));
	  else
	    addr = FUNC7 (Pmode, arg_reg, slot_offset);

	  addr = FUNC9 (addr, arg_offset);

	  if (args[i].partial != 0)
	    {
	      /* Only part of the parameter is being passed on the stack.
		 Generate a simple memory reference of the correct size.  */
	      args[i].stack_slot = FUNC6 (partial_mode, addr);
	      FUNC13 (args[i].stack_slot, FUNC1 (units_on_stack));
	    }
	  else
	    {
	      args[i].stack_slot = FUNC6 (args[i].mode, addr);
	      FUNC12 (args[i].stack_slot,
				  FUNC4 (args[i].tree_value), 1);
	    }
	  FUNC11 (args[i].stack_slot, args[i].locate.boundary);

	  /* Function incoming arguments may overlap with sibling call
	     outgoing arguments and we cannot allow reordering of reads
	     from function arguments with stores to outgoing arguments
	     of sibling calls.  */
	  FUNC10 (args[i].stack, 0);
	  FUNC10 (args[i].stack_slot, 0);
	}
    }
}