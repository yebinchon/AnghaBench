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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  VOIDmode ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

unsigned int
FUNC1 (rtx x, enum machine_mode mode)
{
  return FUNC0 (x, mode, NULL_RTX, VOIDmode, 0);
}