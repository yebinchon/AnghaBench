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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int AND ; 
 int /*<<< orphan*/  CCmode ; 
 int /*<<< orphan*/  CR0_REGNO ; 
 int FUNC0 (scalar_t__) ; 
 int NOT ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  UNSPEC_AND ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  const0_rtx ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC17 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int,int,scalar_t__,scalar_t__) ; 

void
FUNC19 (enum rtx_code code, rtx mem, rtx val,
                       rtx before, rtx after, rtx scratch)
{
  enum machine_mode mode = FUNC0 (mem);
  rtx label, x, cond = FUNC15 (CCmode, CR0_REGNO);

  FUNC2 (FUNC9 ());

  label = FUNC8 ();
  FUNC3 (label);
  label = FUNC12 (VOIDmode, label);

  if (before == NULL_RTX)
    before = scratch;
  FUNC4 (mode, before, mem);

  if (code == NOT)
    x = FUNC11 (mode, FUNC14 (mode, before), val);
  else if (code == AND)
    x = FUNC17 (mode, FUNC10 (2, before, val), UNSPEC_AND);
  else
    x = FUNC18 (code, mode, before, val);

  if (after != NULL_RTX)
    FUNC2 (FUNC16 (VOIDmode, after, FUNC1 (x)));
  FUNC2 (FUNC16 (VOIDmode, scratch, x));

  FUNC5 (mode, cond, mem, scratch);

  x = FUNC13 (VOIDmode, cond, const0_rtx);
  FUNC6 (x, label);

  FUNC2 (FUNC7 ());
}