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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SFmode ; 
 int /*<<< orphan*/  UNSPEC_FRES ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  dconst1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC10 (rtx res, rtx n, rtx d)
{
  rtx x0, e0, e1, y1, u0, v0, one;

  x0 = FUNC3 (SFmode);
  e0 = FUNC3 (SFmode);
  e1 = FUNC3 (SFmode);
  y1 = FUNC3 (SFmode);
  u0 = FUNC3 (SFmode);
  v0 = FUNC3 (SFmode);
  one = FUNC2 (SFmode, FUNC0 (dconst1, SFmode));

  /* x0 = 1./d estimate */
  FUNC1 (FUNC8 (VOIDmode, x0,
			  FUNC9 (SFmode, FUNC4 (1, d),
					  UNSPEC_FRES)));
  /* e0 = 1. - d * x0 */
  FUNC1 (FUNC8 (VOIDmode, e0,
			  FUNC5 (SFmode, one,
					 FUNC6 (SFmode, d, x0))));
  /* e1 = e0 + e0 * e0 */
  FUNC1 (FUNC8 (VOIDmode, e1,
			  FUNC7 (SFmode,
					FUNC6 (SFmode, e0, e0), e0)));
  /* y1 = x0 + e1 * x0 */
  FUNC1 (FUNC8 (VOIDmode, y1,
			  FUNC7 (SFmode,
					FUNC6 (SFmode, e1, x0), x0)));
  /* u0 = n * y1 */
  FUNC1 (FUNC8 (VOIDmode, u0,
			  FUNC6 (SFmode, n, y1)));
  /* v0 = n - d * u0 */
  FUNC1 (FUNC8 (VOIDmode, v0,
			  FUNC5 (SFmode, n,
					 FUNC6 (SFmode, d, u0))));
  /* res = u0 + v0 * y1 */
  FUNC1 (FUNC8 (VOIDmode, res,
			  FUNC7 (SFmode,
					FUNC6 (SFmode, v0, y1), u0)));
}