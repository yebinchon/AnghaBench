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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/  NEG ; 
 int /*<<< orphan*/  NULL_RTX ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  neg_optab ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,scalar_t__,int) ; 

rtx
FUNC2 (enum machine_mode mode, rtx x)
{
  rtx result = FUNC1 (NEG, mode, x, mode);

  if (result == 0)
    result = FUNC0 (mode, neg_optab, x, NULL_RTX, 0);

  return result;
}