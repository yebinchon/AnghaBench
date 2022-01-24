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
 int DImode ; 
 scalar_t__ const0_rtx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC4 (rtx x, enum machine_mode mode)
{
  if (x != const0_rtx)
    return x;
  x = FUNC2 (mode);

  FUNC0 (FUNC1 (mode == DImode ? x
			       : FUNC3 (DImode, x, 0)));
  return x;
}