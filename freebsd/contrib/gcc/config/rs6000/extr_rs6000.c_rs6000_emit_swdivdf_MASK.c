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
 int /*<<< orphan*/  DFmode ; 
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
  rtx x0, e0, e1, e2, y1, y2, y3, u0, v0, one;

  x0 = FUNC3 (DFmode);
  e0 = FUNC3 (DFmode);
  e1 = FUNC3 (DFmode);
  e2 = FUNC3 (DFmode);
  y1 = FUNC3 (DFmode);
  y2 = FUNC3 (DFmode);
  y3 = FUNC3 (DFmode);
  u0 = FUNC3 (DFmode);
  v0 = FUNC3 (DFmode);
  one = FUNC2 (DFmode, FUNC0 (dconst1, DFmode));

  /* x0 = 1./d estimate */
  FUNC1 (FUNC8 (VOIDmode, x0,
			  FUNC9 (DFmode, FUNC4 (1, d),
					  UNSPEC_FRES)));
  /* e0 = 1. - d * x0 */
  FUNC1 (FUNC8 (VOIDmode, e0,
			  FUNC5 (DFmode, one,
					 FUNC6 (SFmode, d, x0))));
  /* y1 = x0 + e0 * x0 */
  FUNC1 (FUNC8 (VOIDmode, y1,
			  FUNC7 (DFmode,
					FUNC6 (DFmode, e0, x0), x0)));
  /* e1 = e0 * e0 */
  FUNC1 (FUNC8 (VOIDmode, e1,
			  FUNC6 (DFmode, e0, e0)));
  /* y2 = y1 + e1 * y1 */
  FUNC1 (FUNC8 (VOIDmode, y2,
			  FUNC7 (DFmode,
					FUNC6 (DFmode, e1, y1), y1)));
  /* e2 = e1 * e1 */
  FUNC1 (FUNC8 (VOIDmode, e2,
			  FUNC6 (DFmode, e1, e1)));
  /* y3 = y2 + e2 * y2 */
  FUNC1 (FUNC8 (VOIDmode, y3,
			  FUNC7 (DFmode,
					FUNC6 (DFmode, e2, y2), y2)));
  /* u0 = n * y3 */
  FUNC1 (FUNC8 (VOIDmode, u0,
			  FUNC6 (DFmode, n, y3)));
  /* v0 = n - d * u0 */
  FUNC1 (FUNC8 (VOIDmode, v0,
			  FUNC5 (DFmode, n,
					 FUNC6 (DFmode, d, u0))));
  /* res = u0 + v0 * y3 */
  FUNC1 (FUNC8 (VOIDmode, res,
			  FUNC7 (DFmode,
					FUNC6 (DFmode, v0, y3), u0)));
}