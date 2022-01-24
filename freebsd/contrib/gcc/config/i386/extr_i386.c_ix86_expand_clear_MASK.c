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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SImode ; 
 int /*<<< orphan*/  TARGET_USE_MOV0 ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ optimize_size ; 
 scalar_t__ reload_completed ; 

void
FUNC10 (rtx dest)
{
  rtx tmp;

  /* We play register width games, which are only valid after reload.  */
  FUNC4 (reload_completed);

  /* Avoid HImode and its attendant prefix byte.  */
  if (FUNC1 (FUNC0 (dest)) < 4)
    dest = FUNC8 (SImode, FUNC2 (dest));

  tmp = FUNC9 (VOIDmode, dest, const0_rtx);

  /* This predicate should match that for movsi_xor and movdi_xor_rex64.  */
  if (reload_completed && (!TARGET_USE_MOV0 || optimize_size))
    {
      rtx clob = FUNC6 (VOIDmode, FUNC8 (CCmode, 17));
      tmp = FUNC7 (VOIDmode, FUNC5 (2, tmp, clob));
    }

  FUNC3 (tmp);
}