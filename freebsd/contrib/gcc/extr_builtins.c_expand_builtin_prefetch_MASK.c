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
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_4__ {TYPE_1__* operand; } ;
struct TYPE_3__ {int /*<<< orphan*/  mode; int /*<<< orphan*/  (* predicate ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ CODE_FOR_prefetch ; 
 int /*<<< orphan*/  EXPAND_NORMAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ HAVE_prefetch ; 
 scalar_t__ INTEGER_CST ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  POINTER_TYPE ; 
 scalar_t__ Pmode ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* insn_data ; 
 scalar_t__ integer_zero_node ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC18 (tree arglist)
{
  tree arg0, arg1, arg2;
  rtx op0, op1, op2;

  if (!FUNC16 (arglist, POINTER_TYPE, 0))
    return;

  arg0 = FUNC5 (arglist);
  /* Arguments 1 and 2 are optional; argument 1 (read/write) defaults to
     zero (read) and argument 2 (locality) defaults to 3 (high degree of
     locality).  */
  if (FUNC3 (arglist))
    {
      arg1 = FUNC5 (FUNC3 (arglist));
      if (FUNC3 (FUNC3 (arglist)))
	arg2 = FUNC5 (FUNC3 (FUNC3 (arglist)));
      else
	arg2 = FUNC6 (NULL_TREE, 3);
    }
  else
    {
      arg1 = integer_zero_node;
      arg2 = FUNC6 (NULL_TREE, 3);
    }

  /* Argument 0 is an address.  */
  op0 = FUNC10 (arg0, NULL_RTX, Pmode, EXPAND_NORMAL);

  /* Argument 1 (read/write flag) must be a compile-time constant int.  */
  if (FUNC4 (arg1) != INTEGER_CST)
    {
      FUNC9 ("second argument to %<__builtin_prefetch%> must be a constant");
      arg1 = integer_zero_node;
    }
  op1 = FUNC11 (arg1);
  /* Argument 1 must be either zero or one.  */
  if (FUNC1 (op1) != 0 && FUNC1 (op1) != 1)
    {
      FUNC17 (0, "invalid second argument to %<__builtin_prefetch%>;"
	       " using zero");
      op1 = const0_rtx;
    }

  /* Argument 2 (locality) must be a compile-time constant int.  */
  if (FUNC4 (arg2) != INTEGER_CST)
    {
      FUNC9 ("third argument to %<__builtin_prefetch%> must be a constant");
      arg2 = integer_zero_node;
    }
  op2 = FUNC11 (arg2);
  /* Argument 2 must be 0, 1, 2, or 3.  */
  if (FUNC1 (op2) < 0 || FUNC1 (op2) > 3)
    {
      FUNC17 (0, "invalid third argument to %<__builtin_prefetch%>; using zero");
      op2 = const0_rtx;
    }

#ifdef HAVE_prefetch
  if (HAVE_prefetch)
    {
      if ((! (*insn_data[(int) CODE_FOR_prefetch].operand[0].predicate)
	     (op0,
	      insn_data[(int) CODE_FOR_prefetch].operand[0].mode))
	  || (GET_MODE (op0) != Pmode))
	{
	  op0 = convert_memory_address (Pmode, op0);
	  op0 = force_reg (Pmode, op0);
	}
      emit_insn (gen_prefetch (op0, op1, op2));
    }
#endif

  /* Don't do anything with direct references to volatile memory, but
     generate code to handle other side effects.  */
  if (!FUNC2 (op0) && FUNC14 (op0))
    FUNC8 (op0);
}