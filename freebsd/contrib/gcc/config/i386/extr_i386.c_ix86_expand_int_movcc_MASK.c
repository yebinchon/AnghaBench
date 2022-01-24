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
typedef  int /*<<< orphan*/  optab ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  AND ; 
 int BRANCH_COST ; 
 scalar_t__ CCFPUmode ; 
 scalar_t__ CCFPmode ; 
 scalar_t__ CONST_INT ; 
 int DImode ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int GE ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int GT ; 
 int HImode ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  IOR ; 
 int LE ; 
 int LT ; 
 int LTU ; 
 scalar_t__ MODE_INT ; 
 int /*<<< orphan*/  NOT ; 
 int /*<<< orphan*/  OPTAB_DIRECT ; 
 int /*<<< orphan*/  OPTAB_WIDEN ; 
 int /*<<< orphan*/  PLUS ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 
 int QImode ; 
 int /*<<< orphan*/  SImode ; 
 scalar_t__ TARGET_64BIT ; 
 int /*<<< orphan*/  TARGET_CMOVE ; 
 scalar_t__ TARGET_FAST_PREFIX ; 
 scalar_t__ TARGET_PARTIAL_REG_STALL ; 
 int TImode ; 
 int UNKNOWN ; 
 int /*<<< orphan*/  VOIDmode ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  and_optab ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ constm1_rtx ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,int,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC17 (int,scalar_t__) ; 
 scalar_t__ FUNC18 (int,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC20 (int) ; 
 scalar_t__ FUNC21 (int,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC22 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC23 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC25 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC27 () ; 
 int /*<<< orphan*/  ior_optab ; 
 scalar_t__ ix86_compare_op0 ; 
 scalar_t__ ix86_compare_op1 ; 
 scalar_t__ FUNC28 (int,scalar_t__,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC29 (int,scalar_t__*,scalar_t__*) ; 
 int FUNC30 (int) ; 
 int /*<<< orphan*/  FUNC31 (scalar_t__,int) ; 
 scalar_t__ FUNC32 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC33 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC34 (int) ; 
 int FUNC35 (int) ; 
 int /*<<< orphan*/  FUNC36 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC37 () ; 
 scalar_t__ FUNC38 (scalar_t__,int /*<<< orphan*/ ) ; 

int
FUNC39 (rtx operands[])
{
  enum rtx_code code = FUNC2 (operands[1]), compare_code;
  rtx compare_seq, compare_op;
  rtx second_test, bypass_test;
  enum machine_mode mode = FUNC3 (operands[0]);
  bool sign_bit_compare_p = false;;

  FUNC37 ();
  compare_op = FUNC29 (code, &second_test, &bypass_test);
  compare_seq = FUNC27 ();
  FUNC12 ();

  compare_code = FUNC2 (compare_op);

  if ((ix86_compare_op1 == const0_rtx && (code == GE || code == LT))
      || (ix86_compare_op1 == constm1_rtx && (code == GT || code == LE)))
    sign_bit_compare_p = true;

  /* Don't attempt mode expansion here -- if we had to expand 5 or 6
     HImode insns, we'd be swallowed in word prefix ops.  */

  if ((mode != HImode || TARGET_FAST_PREFIX)
      && (mode != (TARGET_64BIT ? TImode : DImode))
      && FUNC2 (operands[2]) == CONST_INT
      && FUNC2 (operands[3]) == CONST_INT)
    {
      rtx out = operands[0];
      HOST_WIDE_INT ct = FUNC5 (operands[2]);
      HOST_WIDE_INT cf = FUNC5 (operands[3]);
      HOST_WIDE_INT diff;

      diff = ct - cf;
      /*  Sign bit compares are better done using shifts than we do by using
	  sbb.  */
      if (sign_bit_compare_p
	  || FUNC28 (code, ix86_compare_op0,
					     ix86_compare_op1, &compare_op))
	{
	  /* Detect overlap between destination and compare sources.  */
	  rtx tmp = out;

          if (!sign_bit_compare_p)
	    {
	      bool fpcmp = false;

	      compare_code = FUNC2 (compare_op);

	      if (FUNC3 (FUNC7 (compare_op, 0)) == CCFPmode
		  || FUNC3 (FUNC7 (compare_op, 0)) == CCFPUmode)
		{
		  fpcmp = true;
		  compare_code = FUNC30 (compare_code);
		}

	      /* To simplify rest of code, restrict to the GEU case.  */
	      if (compare_code == LTU)
		{
		  HOST_WIDE_INT tmp = ct;
		  ct = cf;
		  cf = tmp;
		  compare_code = FUNC34 (compare_code);
		  code = FUNC34 (code);
		}
	      else
		{
		  if (fpcmp)
		    FUNC6 (compare_op,
			      FUNC35
			        (FUNC2 (compare_op)));
		  else
		    FUNC6 (compare_op, FUNC34 (FUNC2 (compare_op)));
		}
	      diff = ct - cf;

	      if (FUNC32 (out, ix86_compare_op0)
		  || FUNC32 (out, ix86_compare_op1))
		tmp = FUNC20 (mode);

	      if (mode == DImode)
		FUNC9 (FUNC25 (tmp, compare_op));
	      else
		FUNC9 (FUNC26 (FUNC19 (SImode, tmp), compare_op));
	    }
	  else
	    {
	      if (code == GT || code == GE)
		code = FUNC34 (code);
	      else
		{
		  HOST_WIDE_INT tmp = ct;
		  ct = cf;
		  cf = tmp;
		  diff = ct - cf;
		}
	      tmp = FUNC11 (tmp, code, ix86_compare_op0,
				     ix86_compare_op1, VOIDmode, 0, -1);
	    }

	  if (diff == 1)
	    {
	      /*
	       * cmpl op0,op1
	       * sbbl dest,dest
	       * [addl dest, ct]
	       *
	       * Size 5 - 8.
	       */
	      if (ct)
		tmp = FUNC14 (mode, PLUS,
					   tmp, FUNC1 (ct),
					   FUNC8 (tmp), 1, OPTAB_DIRECT);
	    }
	  else if (cf == -1)
	    {
	      /*
	       * cmpl op0,op1
	       * sbbl dest,dest
	       * orl $ct, dest
	       *
	       * Size 8.
	       */
	      tmp = FUNC14 (mode, IOR,
					 tmp, FUNC1 (ct),
					 FUNC8 (tmp), 1, OPTAB_DIRECT);
	    }
	  else if (diff == -1 && ct)
	    {
	      /*
	       * cmpl op0,op1
	       * sbbl dest,dest
	       * notl dest
	       * [addl dest, cf]
	       *
	       * Size 8 - 11.
	       */
	      tmp = FUNC15 (mode, NOT, tmp, FUNC8 (tmp), 1);
	      if (cf)
		tmp = FUNC14 (mode, PLUS,
					   FUNC8 (tmp), FUNC1 (cf),
					   FUNC8 (tmp), 1, OPTAB_DIRECT);
	    }
	  else
	    {
	      /*
	       * cmpl op0,op1
	       * sbbl dest,dest
	       * [notl dest]
	       * andl cf - ct, dest
	       * [addl dest, ct]
	       *
	       * Size 8 - 11.
	       */

	      if (cf == 0)
		{
		  cf = ct;
		  ct = 0;
		  tmp = FUNC15 (mode, NOT, tmp, FUNC8 (tmp), 1);
		}

	      tmp = FUNC14 (mode, AND,
					 FUNC8 (tmp),
					 FUNC18 (cf - ct, mode),
					 FUNC8 (tmp), 1, OPTAB_DIRECT);
	      if (ct)
		tmp = FUNC14 (mode, PLUS,
					   FUNC8 (tmp), FUNC1 (ct),
					   FUNC8 (tmp), 1, OPTAB_DIRECT);
	    }

	  if (!FUNC36 (tmp, out))
	    FUNC10 (FUNC8 (out), FUNC8 (tmp));

	  return 1; /* DONE */
	}

      if (diff < 0)
	{
	  HOST_WIDE_INT tmp;
	  tmp = ct, ct = cf, cf = tmp;
	  diff = -diff;
	  if (FUNC0 (FUNC3 (ix86_compare_op0)))
	    {
	      /* We may be reversing unordered compare to normal compare, that
		 is not valid in general (we may convert non-trapping condition
		 to trapping one), however on i386 we currently emit all
		 comparisons unordered.  */
	      compare_code = FUNC35 (compare_code);
	      code = FUNC35 (code);
	    }
	  else
	    {
	      compare_code = FUNC34 (compare_code);
	      code = FUNC34 (code);
	    }
	}

      compare_code = UNKNOWN;
      if (FUNC4 (FUNC3 (ix86_compare_op0)) == MODE_INT
	  && FUNC2 (ix86_compare_op1) == CONST_INT)
	{
	  if (ix86_compare_op1 == const0_rtx
	      && (code == LT || code == GE))
	    compare_code = code;
	  else if (ix86_compare_op1 == constm1_rtx)
	    {
	      if (code == LE)
		compare_code = LT;
	      else if (code == GT)
		compare_code = GE;
	    }
	}

      /* Optimize dest = (op0 < 0) ? -1 : cf.  */
      if (compare_code != UNKNOWN
	  && FUNC3 (ix86_compare_op0) == FUNC3 (out)
	  && (cf == -1 || ct == -1))
	{
	  /* If lea code below could be used, only optimize
	     if it results in a 2 insn sequence.  */

	  if (! (diff == 1 || diff == 2 || diff == 4 || diff == 8
		 || diff == 3 || diff == 5 || diff == 9)
	      || (compare_code == LT && ct == -1)
	      || (compare_code == GE && cf == -1))
	    {
	      /*
	       * notl op1	(if necessary)
	       * sarl $31, op1
	       * orl cf, op1
	       */
	      if (ct != -1)
		{
		  cf = ct;
		  ct = -1;
		  code = FUNC34 (code);
		}

	      out = FUNC11 (out, code, ix86_compare_op0,
				     ix86_compare_op1, VOIDmode, 0, -1);

	      out = FUNC14 (mode, IOR,
					 out, FUNC1 (cf),
					 out, 1, OPTAB_DIRECT);
	      if (out != operands[0])
		FUNC10 (operands[0], out);

	      return 1; /* DONE */
	    }
	}


      if ((diff == 1 || diff == 2 || diff == 4 || diff == 8
	   || diff == 3 || diff == 5 || diff == 9)
	  && ((mode != QImode && mode != HImode) || !TARGET_PARTIAL_REG_STALL)
	  && (mode != DImode
	      || FUNC38 (FUNC1 (cf), VOIDmode)))
	{
	  /*
	   * xorl dest,dest
	   * cmpl op1,op2
	   * setcc dest
	   * lea cf(dest*(ct-cf)),dest
	   *
	   * Size 14.
	   *
	   * This also catches the degenerate setcc-only case.
	   */

	  rtx tmp;
	  int nops;

	  out = FUNC11 (out, code, ix86_compare_op0,
				 ix86_compare_op1, VOIDmode, 0, 1);

	  nops = 0;
	  /* On x86_64 the lea instruction operates on Pmode, so we need
	     to get arithmetics done in proper mode to match.  */
	  if (diff == 1)
	    tmp = FUNC8 (out);
	  else
	    {
	      rtx out1;
	      out1 = FUNC8 (out);
	      tmp = FUNC22 (mode, out1, FUNC1 (diff & ~1));
	      nops++;
	      if (diff & 1)
		{
		  tmp = FUNC23 (mode, tmp, out1);
		  nops++;
		}
	    }
	  if (cf != 0)
	    {
	      tmp = FUNC23 (mode, tmp, FUNC1 (cf));
	      nops++;
	    }
	  if (!FUNC36 (tmp, out))
	    {
	      if (nops == 1)
		out = FUNC16 (tmp, FUNC8 (out));
	      else
		FUNC9 (FUNC24 (VOIDmode, FUNC8 (out), FUNC8 (tmp)));
	    }
	  if (!FUNC36 (out, operands[0]))
	    FUNC10 (operands[0], FUNC8 (out));

	  return 1; /* DONE */
	}

      /*
       * General case:			Jumpful:
       *   xorl dest,dest		cmpl op1, op2
       *   cmpl op1, op2		movl ct, dest
       *   setcc dest			jcc 1f
       *   decl dest			movl cf, dest
       *   andl (cf-ct),dest		1:
       *   addl ct,dest
       *
       * Size 20.			Size 14.
       *
       * This is reasonably steep, but branch mispredict costs are
       * high on modern cpus, so consider failing only if optimizing
       * for space.
       */

      if ((!TARGET_CMOVE || (mode == QImode && TARGET_PARTIAL_REG_STALL))
	  && BRANCH_COST >= 2)
	{
	  if (cf == 0)
	    {
	      cf = ct;
	      ct = 0;
	      if (FUNC0 (FUNC3 (ix86_compare_op0)))
		/* We may be reversing unordered compare to normal compare,
		   that is not valid in general (we may convert non-trapping
		   condition to trapping one), however on i386 we currently
		   emit all comparisons unordered.  */
		code = FUNC35 (code);
	      else
		{
		  code = FUNC34 (code);
		  if (compare_code != UNKNOWN)
		    compare_code = FUNC34 (compare_code);
		}
	    }

	  if (compare_code != UNKNOWN)
	    {
	      /* notl op1	(if needed)
		 sarl $31, op1
		 andl (cf-ct), op1
		 addl ct, op1

		 For x < 0 (resp. x <= -1) there will be no notl,
		 so if possible swap the constants to get rid of the
		 complement.
		 True/false will be -1/0 while code below (store flag
		 followed by decrement) is 0/-1, so the constants need
		 to be exchanged once more.  */

	      if (compare_code == GE || !cf)
		{
		  code = FUNC34 (code);
		  compare_code = LT;
		}
	      else
		{
		  HOST_WIDE_INT tmp = cf;
		  cf = ct;
		  ct = tmp;
		}

	      out = FUNC11 (out, code, ix86_compare_op0,
				     ix86_compare_op1, VOIDmode, 0, -1);
	    }
	  else
	    {
	      out = FUNC11 (out, code, ix86_compare_op0,
				     ix86_compare_op1, VOIDmode, 0, 1);

	      out = FUNC14 (mode, PLUS, FUNC8 (out), constm1_rtx,
					 FUNC8 (out), 1, OPTAB_DIRECT);
	    }

	  out = FUNC14 (mode, AND, FUNC8 (out),
				     FUNC18 (cf - ct, mode),
				     FUNC8 (out), 1, OPTAB_DIRECT);
	  if (ct)
	    out = FUNC14 (mode, PLUS, FUNC8 (out), FUNC1 (ct),
				       FUNC8 (out), 1, OPTAB_DIRECT);
	  if (!FUNC36 (out, operands[0]))
	    FUNC10 (operands[0], FUNC8 (out));

	  return 1; /* DONE */
	}
    }

  if (!TARGET_CMOVE || (mode == QImode && TARGET_PARTIAL_REG_STALL))
    {
      /* Try a few things more with specific constants and a variable.  */

      optab op;
      rtx var, orig_out, out, tmp;

      if (BRANCH_COST <= 2)
	return 0; /* FAIL */

      /* If one of the two operands is an interesting constant, load a
	 constant with the above and mask it in with a logical operation.  */

      if (FUNC2 (operands[2]) == CONST_INT)
	{
	  var = operands[3];
	  if (FUNC5 (operands[2]) == 0 && operands[3] != constm1_rtx)
	    operands[3] = constm1_rtx, op = and_optab;
	  else if (FUNC5 (operands[2]) == -1 && operands[3] != const0_rtx)
	    operands[3] = const0_rtx, op = ior_optab;
	  else
	    return 0; /* FAIL */
	}
      else if (FUNC2 (operands[3]) == CONST_INT)
	{
	  var = operands[2];
	  if (FUNC5 (operands[3]) == 0 && operands[2] != constm1_rtx)
	    operands[2] = constm1_rtx, op = and_optab;
	  else if (FUNC5 (operands[3]) == -1 && operands[3] != const0_rtx)
	    operands[2] = const0_rtx, op = ior_optab;
	  else
	    return 0; /* FAIL */
	}
      else
        return 0; /* FAIL */

      orig_out = operands[0];
      tmp = FUNC20 (mode);
      operands[0] = tmp;

      /* Recurse to get the constant loaded.  */
      if (FUNC39 (operands) == 0)
        return 0; /* FAIL */

      /* Mask in the interesting variable.  */
      out = FUNC13 (mode, op, var, tmp, orig_out, 0,
			  OPTAB_WIDEN);
      if (!FUNC36 (out, orig_out))
	FUNC10 (FUNC8 (orig_out), FUNC8 (out));

      return 1; /* DONE */
    }

  /*
   * For comparison with above,
   *
   * movl cf,dest
   * movl ct,tmp
   * cmpl op1,op2
   * cmovcc tmp,dest
   *
   * Size 15.
   */

  if (! FUNC31 (operands[2], mode))
    operands[2] = FUNC17 (mode, operands[2]);
  if (! FUNC31 (operands[3], mode))
    operands[3] = FUNC17 (mode, operands[3]);

  if (bypass_test && FUNC32 (operands[0], operands[3]))
    {
      rtx tmp = FUNC20 (mode);
      FUNC10 (tmp, operands[3]);
      operands[3] = tmp;
    }
  if (second_test && FUNC32 (operands[0], operands[2]))
    {
      rtx tmp = FUNC20 (mode);
      FUNC10 (tmp, operands[2]);
      operands[2] = tmp;
    }

  if (! FUNC33 (operands[2], VOIDmode)
      && (mode == QImode
          || ! FUNC33 (operands[3], VOIDmode)))
    operands[2] = FUNC17 (mode, operands[2]);

  if (mode == QImode
      && ! FUNC33 (operands[3], VOIDmode))
    operands[3] = FUNC17 (mode, operands[3]);

  FUNC9 (compare_seq);
  FUNC9 (FUNC24 (VOIDmode, operands[0],
			  FUNC21 (mode,
						compare_op, operands[2],
						operands[3])));
  if (bypass_test)
    FUNC9 (FUNC24 (VOIDmode, FUNC8 (operands[0]),
			    FUNC21 (mode,
				  bypass_test,
				  FUNC8 (operands[3]),
				  FUNC8 (operands[0]))));
  if (second_test)
    FUNC9 (FUNC24 (VOIDmode, FUNC8 (operands[0]),
			    FUNC21 (mode,
				  second_test,
				  FUNC8 (operands[2]),
				  FUNC8 (operands[0]))));

  return 1; /* DONE */
}