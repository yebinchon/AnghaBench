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
 scalar_t__ FP_INC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SFmode ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

void
FUNC12 (rtx dest, rtx src, rtx scratch)
{
  rtx fp1, fp2;

  /* Change the source to SFmode.  */
  if (FUNC2 (src))
    src = FUNC5 (src, SFmode, 0);
  else if (FUNC4 (src) || FUNC1 (src) == SUBREG)
    src = FUNC9 (SFmode, FUNC11 (src));

  fp1 = FUNC9 (SFmode, FUNC3 (scratch));
  fp2 = FUNC9 (SFmode, FUNC3 (scratch) + FP_INC);

  FUNC8 (FUNC6 (fp1), src);
  FUNC8 (FUNC6 (fp2), FUNC0 (SFmode));
  FUNC7 (FUNC10 (dest, fp2, fp1));
}