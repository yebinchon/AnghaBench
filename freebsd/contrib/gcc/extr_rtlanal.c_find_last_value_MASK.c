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
 scalar_t__ EXPR_LIST ; 
 scalar_t__ FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  REG_EQUAL ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 

rtx
FUNC14 (rtx x, rtx *pinsn, rtx valid_to, int allow_hwreg)
{
  rtx p;

  for (p = FUNC3 (*pinsn); p && !FUNC2 (p);
       p = FUNC3 (p))
    if (FUNC1 (p))
      {
	rtx set = FUNC13 (p);
	rtx note = FUNC9 (p, REG_EQUAL, NULL_RTX);

	if (set && FUNC12 (x, FUNC6 (set)))
	  {
	    rtx src = FUNC7 (set);

	    if (note && FUNC0 (FUNC8 (note, 0)) != EXPR_LIST)
	      src = FUNC8 (note, 0);

	    if ((valid_to == NULL_RTX
		 || ! FUNC10 (src, FUNC3 (p), valid_to))
		/* Reject hard registers because we don't usually want
		   to use them; we'd rather use a pseudo.  */
		&& (! (FUNC5 (src)
		      && FUNC4 (src) < FIRST_PSEUDO_REGISTER) || allow_hwreg))
	      {
		*pinsn = p;
		return src;
	      }
	  }

	/* If set in non-simple way, we don't have a value.  */
	if (FUNC11 (x, p))
	  break;
      }

  return x;
}