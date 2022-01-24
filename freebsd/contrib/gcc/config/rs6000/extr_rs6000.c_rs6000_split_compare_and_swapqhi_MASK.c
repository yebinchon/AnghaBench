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

/* Variables and functions */
 int /*<<< orphan*/  CCmode ; 
 int /*<<< orphan*/  CR0_REGNO ; 
 int /*<<< orphan*/  SImode ; 
 int /*<<< orphan*/  UNSPEC_AND ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC19 (rtx dest, rtx mask,
				  rtx oldval, rtx newval, rtx mem,
				  rtx scratch)
{
  rtx label1, label2, x, cond = FUNC16 (CCmode, CR0_REGNO);

  FUNC1 (FUNC9 ());
  label1 = FUNC13 (VOIDmode, FUNC8 ());
  label2 = FUNC13 (VOIDmode, FUNC8 ());
  FUNC2 (FUNC0 (label1, 0));

  FUNC3 (SImode, scratch, mem);

  /* Mask subword within loaded value for comparison with oldval.
     Use UNSPEC_AND to avoid clobber.*/
  FUNC1 (FUNC17 (SImode, dest,
			  FUNC18 (SImode,
					  FUNC10 (2, scratch, mask),
					  UNSPEC_AND)));

  x = FUNC12 (CCmode, dest, oldval);
  FUNC1 (FUNC17 (VOIDmode, cond, x));

  x = FUNC14 (VOIDmode, cond, const0_rtx);
  FUNC5 (x, label2);

  /* Clear subword within loaded value for insertion of new value.  */
  FUNC1 (FUNC17 (SImode, scratch,
			  FUNC11 (SImode,
				       FUNC15 (SImode, mask), scratch)));
  FUNC1 (FUNC6 (scratch, scratch, newval));
  FUNC4 (SImode, cond, mem, scratch);

  x = FUNC14 (VOIDmode, cond, const0_rtx);
  FUNC5 (x, label1);

  FUNC1 (FUNC7 ());
  FUNC2 (FUNC0 (label2, 0));
}