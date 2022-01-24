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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/  NULL_RTX ; 
 int UNKNOWN ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

rtx
FUNC3 (rtx exp, enum machine_mode mode)
{
  enum rtx_code reversed_code = FUNC1 (exp, NULL_RTX);
  if (reversed_code == UNKNOWN)
    return NULL_RTX;
  else
    return FUNC2 (reversed_code, mode, VOIDmode,
                                    FUNC0 (exp, 0), FUNC0 (exp, 1));
}