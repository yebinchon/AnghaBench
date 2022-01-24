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

/* Variables and functions */
 scalar_t__ AND ; 
 scalar_t__ EQ_ATTR ; 
 scalar_t__ EQ_ATTR_ALT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ IOR ; 
 scalar_t__ NOT ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ false_rtx ; 
 scalar_t__ FUNC7 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ true_rtx ; 

__attribute__((used)) static rtx
FUNC9 (rtx exp, rtx *pterm, int insn_code, int insn_index)
{
  rtx left, right;
  rtx newexp;
  rtx temp;
  int left_eliminates_term, right_eliminates_term;

  if (FUNC0 (exp) == AND)
    {
      left  = FUNC9 (FUNC1 (exp, 0), pterm, insn_code, insn_index);
      right = FUNC9 (FUNC1 (exp, 1), pterm, insn_code, insn_index);
      if (left != FUNC1 (exp, 0) || right != FUNC1 (exp, 1))
	{
	  newexp = FUNC6 (AND, left, right);

	  exp = FUNC7 (newexp, insn_code, insn_index);
	}
    }

  else if (FUNC0 (exp) == IOR)
    {
      /* For the IOR case, we do the same as above, except that we can
         only eliminate `term' if both sides of the IOR would do so.  */
      temp = *pterm;
      left = FUNC9 (FUNC1 (exp, 0), &temp, insn_code, insn_index);
      left_eliminates_term = (temp == true_rtx);

      temp = *pterm;
      right = FUNC9 (FUNC1 (exp, 1), &temp, insn_code, insn_index);
      right_eliminates_term = (temp == true_rtx);

      if (left_eliminates_term && right_eliminates_term)
	*pterm = true_rtx;

      if (left != FUNC1 (exp, 0) || right != FUNC1 (exp, 1))
	{
	  newexp = FUNC6 (IOR, left, right);

	  exp = FUNC7 (newexp, insn_code, insn_index);
	}
    }

  /* Check for simplifications.  Do some extra checking here since this
     routine is called so many times.  */

  if (exp == *pterm)
    return true_rtx;

  else if (FUNC0 (exp) == NOT && FUNC1 (exp, 0) == *pterm)
    return false_rtx;

  else if (FUNC0 (*pterm) == NOT && exp == FUNC1 (*pterm, 0))
    return false_rtx;

  else if (FUNC0 (exp) == EQ_ATTR_ALT && FUNC0 (*pterm) == EQ_ATTR_ALT)
    {
      if (FUNC4 (*pterm, exp))
	return true_rtx;

      if (FUNC3 (*pterm, exp))
	return false_rtx;

      if (FUNC4 (exp, *pterm))
	*pterm = true_rtx;
	
      return exp;
    }

  else if (FUNC0 (exp) == EQ_ATTR && FUNC0 (*pterm) == EQ_ATTR)
    {
      if (FUNC2 (exp, 0) != FUNC2 (*pterm, 0))
	return exp;

      if (! FUNC8 (FUNC2 (exp, 1), FUNC2 (*pterm, 1)))
	return true_rtx;
      else
	return false_rtx;
    }

  else if (FUNC0 (*pterm) == EQ_ATTR && FUNC0 (exp) == NOT
	   && FUNC0 (FUNC1 (exp, 0)) == EQ_ATTR)
    {
      if (FUNC2 (*pterm, 0) != FUNC2 (FUNC1 (exp, 0), 0))
	return exp;

      if (! FUNC8 (FUNC2 (*pterm, 1), FUNC2 (FUNC1 (exp, 0), 1)))
	return false_rtx;
      else
	return true_rtx;
    }

  else if (FUNC0 (exp) == EQ_ATTR && FUNC0 (*pterm) == NOT
	   && FUNC0 (FUNC1 (*pterm, 0)) == EQ_ATTR)
    {
      if (FUNC2 (exp, 0) != FUNC2 (FUNC1 (*pterm, 0), 0))
	return exp;

      if (! FUNC8 (FUNC2 (exp, 1), FUNC2 (FUNC1 (*pterm, 0), 1)))
	return false_rtx;
      else
	*pterm = true_rtx;
    }

  else if (FUNC0 (exp) == NOT && FUNC0 (*pterm) == NOT)
    {
      if (FUNC5 (FUNC1 (exp, 0), FUNC1 (*pterm, 0)))
	return true_rtx;
    }

  else if (FUNC0 (exp) == NOT)
    {
      if (FUNC5 (FUNC1 (exp, 0), *pterm))
	return false_rtx;
    }

  else if (FUNC0 (*pterm) == NOT)
    {
      if (FUNC5 (FUNC1 (*pterm, 0), exp))
	return false_rtx;
    }

  else if (FUNC5 (exp, *pterm))
    return true_rtx;

  return exp;
}