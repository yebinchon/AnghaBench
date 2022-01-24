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
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int VOIDmode ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 

int
FUNC3 (rtx op, enum machine_mode mode)
{
  if (FUNC0 (op) != CONST_INT)
    return 0;

  if (mode != VOIDmode
      && FUNC2 (FUNC1 (op), mode) != FUNC1 (op))
    return 0;

  return 1;
}