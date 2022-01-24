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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CONST_DOUBLE ; 
 int CONST_INT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int NEG ; 
 int NOT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  RTX_BIN_ARITH 133 
#define  RTX_COMM_ARITH 132 
#define  RTX_CONST_OBJ 131 
#define  RTX_EXTRA 130 
#define  RTX_OBJ 129 
#define  RTX_UNARY 128 
 int SUBREG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6 (rtx op)
{
  enum rtx_code code = FUNC1 (op);
  
  /* Constants always come the second operand.  Prefer "nice" constants.  */
  if (code == CONST_INT)
    return -7;
  if (code == CONST_DOUBLE)
    return -6;
  op = FUNC5 (op);
  code = FUNC1 (op);

  switch (FUNC2 (code))
    {
    case RTX_CONST_OBJ:
      if (code == CONST_INT)
        return -5;
      if (code == CONST_DOUBLE)
        return -4;
      return -3;

    case RTX_EXTRA:
      /* SUBREGs of objects should come second.  */
      if (code == SUBREG && FUNC3 (FUNC4 (op)))
        return -2;

      if (!FUNC0 (op))
        return 0;
      else
	/* As for RTX_CONST_OBJ.  */
	return -3;

    case RTX_OBJ:
      /* Complex expressions should be the first, so decrease priority
         of objects.  */
      return -1;

    case RTX_COMM_ARITH:
      /* Prefer operands that are themselves commutative to be first.
         This helps to make things linear.  In particular,
         (and (and (reg) (reg)) (not (reg))) is canonical.  */
      return 4;

    case RTX_BIN_ARITH:
      /* If only one operand is a binary expression, it will be the first
         operand.  In particular,  (plus (minus (reg) (reg)) (neg (reg)))
         is canonical, although it will usually be further simplified.  */
      return 2;
  
    case RTX_UNARY:
      /* Then prefer NEG and NOT.  */
      if (code == NEG || code == NOT)
        return 1;

    default:
      return 0;
    }
}