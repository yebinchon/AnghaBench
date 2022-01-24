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
typedef  scalar_t__ rtx ;
typedef  int /*<<< orphan*/  rtvec ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ COMPARE ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int) ; 
 int FUNC8 (int) ; 
 scalar_t__ MODE_CC ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (int) ; 
 int VOIDmode ; 
 scalar_t__ FUNC13 (scalar_t__,int) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ const1_rtx ; 
 scalar_t__ FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 scalar_t__ FUNC17 (int,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC18 (int,int,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC19 (scalar_t__,scalar_t__) ; 
 int FUNC20 (int) ; 

rtx
FUNC21 (enum rtx_code code, enum machine_mode mode,
			       enum machine_mode cmp_mode, rtx op0, rtx op1)
{
  rtx tem, trueop0, trueop1;

  if (cmp_mode == VOIDmode)
    cmp_mode = FUNC6 (op0);
  if (cmp_mode == VOIDmode)
    cmp_mode = FUNC6 (op1);

  tem = FUNC17 (code, cmp_mode, op0, op1);
  if (tem)
    {
      if (FUNC10 (mode))
	{
          if (tem == const0_rtx)
            return FUNC1 (mode);
#ifdef FLOAT_STORE_FLAG_VALUE
	  {
	    REAL_VALUE_TYPE val;
	    val = FLOAT_STORE_FLAG_VALUE (mode);
	    return CONST_DOUBLE_FROM_REAL_VALUE (val, mode);
	  }
#else
	  return NULL_RTX;
#endif 
	}
      if (FUNC11 (mode))
	{
	  if (tem == const0_rtx)
	    return FUNC1 (mode);
#ifdef VECTOR_STORE_FLAG_VALUE
	  {
	    int i, units;
	    rtvec v;

	    rtx val = VECTOR_STORE_FLAG_VALUE (mode);
	    if (val == NULL_RTX)
	      return NULL_RTX;
	    if (val == const1_rtx)
	      return CONST1_RTX (mode);

	    units = GET_MODE_NUNITS (mode);
	    v = rtvec_alloc (units);
	    for (i = 0; i < units; i++)
	      RTVEC_ELT (v, i) = val;
	    return gen_rtx_raw_CONST_VECTOR (mode, v);
	  }
#else
	  return NULL_RTX;
#endif
	}

      return tem;
    }

  /* For the following tests, ensure const0_rtx is op1.  */
  if (FUNC19 (op0, op1)
      || (op0 == const0_rtx && op1 != const0_rtx))
    tem = op0, op0 = op1, op1 = tem, code = FUNC20 (code);

  /* If op0 is a compare, extract the comparison arguments from it.  */
  if (FUNC5 (op0) == COMPARE && op1 == const0_rtx)
    return FUNC21 (code, mode, VOIDmode,
				          FUNC13 (op0, 0), FUNC13 (op0, 1));

  if (FUNC7 (cmp_mode) == MODE_CC
      || FUNC0 (op0))
    return NULL_RTX;

  trueop0 = FUNC14 (op0);
  trueop1 = FUNC14 (op1);
  return FUNC18 (code, mode, cmp_mode,
		  			  trueop0, trueop1);
}