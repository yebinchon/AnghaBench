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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFmode ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 

void FUNC17 (rtx op0, rtx op1)
{
  rtx label1 = FUNC14 ();
  rtx label2 = FUNC14 ();

  rtx tmp = FUNC15 (XFmode);
  rtx tmp2 = FUNC15 (XFmode);

  FUNC3 (FUNC8 (tmp, op1));
  FUNC3 (FUNC11 (tmp,
    FUNC1 (
       FUNC2 ("0.29289321881345247561810596348408353", XFmode),
       XFmode)));
  FUNC5 (FUNC10 (label1));

  FUNC7 (tmp2, FUNC16 (4)); /* fldln2 */
  FUNC3 (FUNC13 (op0, tmp2, op1));
  FUNC4 (label2);

  FUNC6 (label1);
  FUNC7 (tmp, FUNC0 (XFmode));
  FUNC3 (FUNC9 (tmp, op1, tmp));
  FUNC7 (tmp2, FUNC16 (4)); /* fldln2 */
  FUNC3 (FUNC12 (op0, tmp2, tmp));

  FUNC6 (label2);
}