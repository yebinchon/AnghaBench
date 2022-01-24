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
typedef  scalar_t__ tree ;
typedef  scalar_t__ rtx ;
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ COMPONENT_REF ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ PARM_DECL ; 
 scalar_t__ PLUS ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 scalar_t__ FUNC18 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 scalar_t__ VAR_DECL ; 
 scalar_t__ FUNC20 (scalar_t__,int) ; 
 scalar_t__ FUNC21 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC22 (scalar_t__) ; 
 int flag_argument_noalias ; 
 scalar_t__ FUNC23 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC26 (rtx x, rtx y)
{
  tree exprx = FUNC9 (x), expry = FUNC9 (y);
  rtx rtlx, rtly;
  rtx basex, basey;
  rtx moffsetx, moffsety;
  HOST_WIDE_INT offsetx = 0, offsety = 0, sizex, sizey, tem;

  /* Unless both have exprs, we can't tell anything.  */
  if (exprx == 0 || expry == 0)
    return 0;

  /* If both are field references, we may be able to determine something.  */
  if (FUNC17 (exprx) == COMPONENT_REF
      && FUNC17 (expry) == COMPONENT_REF
      && FUNC24 (exprx, expry))
    return 1;


  /* If the field reference test failed, look at the DECLs involved.  */
  moffsetx = FUNC10 (x);
  if (FUNC17 (exprx) == COMPONENT_REF)
    {
      if (FUNC17 (expry) == VAR_DECL
	  && FUNC13 (FUNC19 (expry)))
	{
	 tree field = FUNC18 (exprx, 1);
	 tree fieldcontext = FUNC1 (field);
	 if (FUNC23 (fieldcontext,
						       FUNC19 (field)))
	   return 1;
	}
      {
	tree t = FUNC22 (exprx);
	if (! t)
	  return 0;
	moffsetx = FUNC21 (exprx, moffsetx);
	exprx = t;
      }
    }
  else if (FUNC7 (exprx))
    {
      exprx = FUNC18 (exprx, 0);
      if (flag_argument_noalias < 2
	  || FUNC17 (exprx) != PARM_DECL)
	return 0;
    }

  moffsety = FUNC10 (y);
  if (FUNC17 (expry) == COMPONENT_REF)
    {
      if (FUNC17 (exprx) == VAR_DECL
	  && FUNC13 (FUNC19 (exprx)))
	{
	 tree field = FUNC18 (expry, 1);
	 tree fieldcontext = FUNC1 (field);
	 if (FUNC23 (fieldcontext,
						       FUNC19 (field)))
	   return 1;
	}
      {
	tree t = FUNC22 (expry);
	if (! t)
	  return 0;
	moffsety = FUNC21 (expry, moffsety);
	expry = t;
      }
    }
  else if (FUNC7 (expry))
    {
      expry = FUNC18 (expry, 0);
      if (flag_argument_noalias < 2
	  || FUNC17 (expry) != PARM_DECL)
	return 0;
    }

  if (! FUNC2 (exprx) || ! FUNC2 (expry))
    return 0;

  rtlx = FUNC3 (exprx);
  rtly = FUNC3 (expry);

  /* If either RTL is not a MEM, it must be a REG or CONCAT, meaning they
     can't overlap unless they are the same because we never reuse that part
     of the stack frame used for locals for spilled pseudos.  */
  if ((!FUNC11 (rtlx) || !FUNC11 (rtly))
      && ! FUNC25 (rtlx, rtly))
    return 1;

  /* Get the base and offsets of both decls.  If either is a register, we
     know both are and are the same, so use that as the base.  The only
     we can avoid overlap is if we can deduce that they are nonoverlapping
     pieces of that decl, which is very rare.  */
  basex = FUNC11 (rtlx) ? FUNC20 (rtlx, 0) : rtlx;
  if (FUNC4 (basex) == PLUS && FUNC4 (FUNC20 (basex, 1)) == CONST_INT)
    offsetx = FUNC8 (FUNC20 (basex, 1)), basex = FUNC20 (basex, 0);

  basey = FUNC11 (rtly) ? FUNC20 (rtly, 0) : rtly;
  if (FUNC4 (basey) == PLUS && FUNC4 (FUNC20 (basey, 1)) == CONST_INT)
    offsety = FUNC8 (FUNC20 (basey, 1)), basey = FUNC20 (basey, 0);

  /* If the bases are different, we know they do not overlap if both
     are constants or if one is a constant and the other a pointer into the
     stack frame.  Otherwise a different base means we can't tell if they
     overlap or not.  */
  if (! FUNC25 (basex, basey))
    return ((FUNC0 (basex) && FUNC0 (basey))
	    || (FUNC0 (basex) && FUNC16 (basey)
		&& FUNC15 (FUNC14 (basey)))
	    || (FUNC0 (basey) && FUNC16 (basex)
		&& FUNC15 (FUNC14 (basex))));

  sizex = (!FUNC11 (rtlx) ? (int) FUNC6 (FUNC5 (rtlx))
	   : FUNC12 (rtlx) ? FUNC8 (FUNC12 (rtlx))
	   : -1);
  sizey = (!FUNC11 (rtly) ? (int) FUNC6 (FUNC5 (rtly))
	   : FUNC12 (rtly) ? FUNC8 (FUNC12 (rtly)) :
	   -1);

  /* If we have an offset for either memref, it can update the values computed
     above.  */
  if (moffsetx)
    offsetx += FUNC8 (moffsetx), sizex -= FUNC8 (moffsetx);
  if (moffsety)
    offsety += FUNC8 (moffsety), sizey -= FUNC8 (moffsety);

  /* If a memref has both a size and an offset, we can use the smaller size.
     We can't do this if the offset isn't known because we must view this
     memref as being anywhere inside the DECL's MEM.  */
  if (FUNC12 (x) && moffsetx)
    sizex = FUNC8 (FUNC12 (x));
  if (FUNC12 (y) && moffsety)
    sizey = FUNC8 (FUNC12 (y));

  /* Put the values of the memref with the lower offset in X's values.  */
  if (offsetx > offsety)
    {
      tem = offsetx, offsetx = offsety, offsety = tem;
      tem = sizex, sizex = sizey, sizey = tem;
    }

  /* If we don't know the size of the lower-offset value, we can't tell
     if they conflict.  Otherwise, we do the test.  */
  return sizex >= 0 && offsety >= offsetx + sizex;
}