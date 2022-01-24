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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
 int AND ; 
 int FUNC0 (scalar_t__) ; 
 int IOR ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ false_rtx ; 
 scalar_t__ FUNC4 (scalar_t__,int,int) ; 
 scalar_t__ true_rtx ; 

__attribute__((used)) static rtx
FUNC5 (enum rtx_code code, rtx exp, rtx term, int insn_code, int insn_index)
{
  rtx newexp;

  /* Avoid consing in some special cases.  */
  if (code == AND && term == true_rtx)
    return exp;
  if (code == AND && term == false_rtx)
    return false_rtx;
  if (code == AND && exp == true_rtx)
    return term;
  if (code == AND && exp == false_rtx)
    return false_rtx;
  if (code == IOR && term == true_rtx)
    return true_rtx;
  if (code == IOR && term == false_rtx)
    return exp;
  if (code == IOR && exp == true_rtx)
    return true_rtx;
  if (code == IOR && exp == false_rtx)
    return term;
  if (FUNC2 (exp, term))
    return exp;

  if (FUNC0 (term) == code)
    {
      exp = FUNC5 (code, exp, FUNC1 (term, 0),
			       insn_code, insn_index);
      exp = FUNC5 (code, exp, FUNC1 (term, 1),
			       insn_code, insn_index);

      return exp;
    }

  if (FUNC0 (exp) == code)
    {
      rtx new = FUNC5 (code, FUNC1 (exp, 1),
				   term, insn_code, insn_index);
      if (new != FUNC1 (exp, 1))
	/* Make a copy of this expression and call recursively.  */
	newexp = FUNC3 (code, FUNC1 (exp, 0), new);
      else
	newexp = exp;
    }
  else
    {
      /* Insert the new term.  */
      newexp = FUNC3 (code, exp, term);
    }

  return FUNC4 (newexp, insn_code, insn_index);
}