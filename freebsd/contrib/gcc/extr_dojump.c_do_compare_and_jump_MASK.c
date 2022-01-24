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
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int BLKmode ; 
 scalar_t__ ERROR_MARK ; 
 scalar_t__ FUNCTION_TYPE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ HAVE_canonicalize_funcptr_for_compare ; 
 scalar_t__ INTEGER_CST ; 
 int /*<<< orphan*/  NULL_RTX ; 
 scalar_t__ POINTER_TYPE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static void
FUNC12 (tree exp, enum rtx_code signed_code,
		     enum rtx_code unsigned_code, rtx if_false_label,
		     rtx if_true_label)
{
  rtx op0, op1;
  tree type;
  enum machine_mode mode;
  int unsignedp;
  enum rtx_code code;

  /* Don't crash if the comparison was erroneous.  */
  op0 = FUNC8 (FUNC2 (exp, 0));
  if (FUNC1 (FUNC2 (exp, 0)) == ERROR_MARK)
    return;

  op1 = FUNC8 (FUNC2 (exp, 1));
  if (FUNC1 (FUNC2 (exp, 1)) == ERROR_MARK)
    return;

  type = FUNC3 (FUNC2 (exp, 0));
  mode = FUNC4 (type);
  if (FUNC1 (FUNC2 (exp, 0)) == INTEGER_CST
      && (FUNC1 (FUNC2 (exp, 1)) != INTEGER_CST
          || (FUNC0 (mode)
              > FUNC0 (FUNC4 (FUNC3 (FUNC2 (exp,
                                                                      1)))))))
    {
      /* op0 might have been replaced by promoted constant, in which
         case the type of second argument should be used.  */
      type = FUNC3 (FUNC2 (exp, 1));
      mode = FUNC4 (type);
    }
  unsignedp = FUNC5 (type);
  code = unsignedp ? unsigned_code : signed_code;

#ifdef HAVE_canonicalize_funcptr_for_compare
  /* If function pointers need to be "canonicalized" before they can
     be reliably compared, then canonicalize them.
     Only do this if *both* sides of the comparison are function pointers.
     If one side isn't, we want a noncanonicalized comparison.  See PR
     middle-end/17564.  */
  if (HAVE_canonicalize_funcptr_for_compare
      && TREE_CODE (TREE_TYPE (TREE_OPERAND (exp, 0))) == POINTER_TYPE
      && TREE_CODE (TREE_TYPE (TREE_TYPE (TREE_OPERAND (exp, 0))))
          == FUNCTION_TYPE
      && TREE_CODE (TREE_TYPE (TREE_OPERAND (exp, 1))) == POINTER_TYPE
      && TREE_CODE (TREE_TYPE (TREE_TYPE (TREE_OPERAND (exp, 1))))
          == FUNCTION_TYPE)
    {
      rtx new_op0 = gen_reg_rtx (mode);
      rtx new_op1 = gen_reg_rtx (mode);

      emit_insn (gen_canonicalize_funcptr_for_compare (new_op0, op0));
      op0 = new_op0;

      emit_insn (gen_canonicalize_funcptr_for_compare (new_op1, op1));
      op1 = new_op1;
    }
#endif

  FUNC6 (op0, op1, code, unsignedp, mode,
                           ((mode == BLKmode)
                            ? FUNC9 (FUNC2 (exp, 0)) : NULL_RTX),
                           if_false_label, if_true_label);
}