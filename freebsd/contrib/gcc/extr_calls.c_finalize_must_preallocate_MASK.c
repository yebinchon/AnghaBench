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
struct args_size {int constant; } ;
struct arg_data {scalar_t__ partial; scalar_t__ reg; int /*<<< orphan*/  tree_value; int /*<<< orphan*/  pass_on_stack; } ;

/* Variables and functions */
 scalar_t__ BLKmode ; 
 scalar_t__ CALL_EXPR ; 
 scalar_t__ COND_EXPR ; 
 scalar_t__ TARGET_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5 (int must_preallocate, int num_actuals, struct arg_data *args, struct args_size *args_size)
{
  /* See if we have or want to preallocate stack space.

     If we would have to push a partially-in-regs parm
     before other stack parms, preallocate stack space instead.

     If the size of some parm is not a multiple of the required stack
     alignment, we must preallocate.

     If the total size of arguments that would otherwise create a copy in
     a temporary (such as a CALL) is more than half the total argument list
     size, preallocation is faster.

     Another reason to preallocate is if we have a machine (like the m88k)
     where stack alignment is required to be maintained between every
     pair of insns, not just when the call is made.  However, we assume here
     that such machines either do not have push insns (and hence preallocation
     would occur anyway) or the problem is taken care of with
     PUSH_ROUNDING.  */

  if (! must_preallocate)
    {
      int partial_seen = 0;
      int copy_to_evaluate_size = 0;
      int i;

      for (i = 0; i < num_actuals && ! must_preallocate; i++)
	{
	  if (args[i].partial > 0 && ! args[i].pass_on_stack)
	    partial_seen = 1;
	  else if (partial_seen && args[i].reg == 0)
	    must_preallocate = 1;

	  if (FUNC3 (FUNC2 (args[i].tree_value)) == BLKmode
	      && (FUNC1 (args[i].tree_value) == CALL_EXPR
		  || FUNC1 (args[i].tree_value) == TARGET_EXPR
		  || FUNC1 (args[i].tree_value) == COND_EXPR
		  || FUNC0 (FUNC2 (args[i].tree_value))))
	    copy_to_evaluate_size
	      += FUNC4 (FUNC2 (args[i].tree_value));
	}

      if (copy_to_evaluate_size * 2 >= args_size->constant
	  && args_size->constant > 0)
	must_preallocate = 1;
    }
  return must_preallocate;
}