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
typedef  scalar_t__ rtx ;
struct TYPE_4__ {scalar_t__ n_alternatives; int n_operands; scalar_t__* operand_type; scalar_t__* operand; int /*<<< orphan*/ * operand_mode; int /*<<< orphan*/ * operand_loc; } ;
struct TYPE_3__ {scalar_t__ memory_ok; } ;
typedef  int /*<<< orphan*/  HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ MEM ; 
 scalar_t__ OP_IN ; 
 scalar_t__ SYMBOL_REF ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_2__ recog_data ; 
 TYPE_1__** recog_op_alt ; 
 size_t which_alternative ; 

__attribute__((used)) static bool
FUNC11 (rtx insn, HOST_WIDE_INT address, int do_pushes)
{
  bool result = false;
  int opno;

  FUNC6 (insn);

  if (!FUNC5 (1))
    FUNC7 (insn);

  if (recog_data.n_alternatives == 0)
    return false;

  /* Fill in recog_op_alt with information about the constraints of
     this insn.  */
  FUNC9 ();

  for (opno = 0; opno < recog_data.n_operands; opno++)
    {
      /* Things we need to fix can only occur in inputs.  */
      if (recog_data.operand_type[opno] != OP_IN)
	continue;

      /* If this alternative is a memory reference, then any mention
	 of constants in this alternative is really to fool reload
	 into allowing us to accept one there.  We need to fix them up
	 now so that we output the right code.  */
      if (recog_op_alt[opno][which_alternative].memory_ok)
	{
	  rtx op = recog_data.operand[opno];

	  if (FUNC0 (op))
	    {
	      if (do_pushes)
		FUNC10 (insn, address, recog_data.operand_loc[opno],
				   recog_data.operand_mode[opno], op);
	      result = true;
	    }
	  else if (FUNC2 (op) == MEM
		   && FUNC2 (FUNC3 (op, 0)) == SYMBOL_REF
		   && FUNC1 (FUNC3 (op, 0)))
	    {
	      if (do_pushes)
		{
		  rtx cop = FUNC4 (op);

		  /* Casting the address of something to a mode narrower
		     than a word can cause avoid_constant_pool_reference()
		     to return the pool reference itself.  That's no good to
		     us here.  Lets just hope that we can use the
		     constant pool value directly.  */
		  if (op == cop)
		    cop = FUNC8 (FUNC3 (op, 0));

		  FUNC10 (insn, address,
				     recog_data.operand_loc[opno],
				     recog_data.operand_mode[opno], cop);
		}

	      result = true;
	    }
	}
    }

  return result;
}