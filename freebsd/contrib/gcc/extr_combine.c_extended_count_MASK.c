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
 int FUNC0 (int) ; 
 int HOST_BITS_PER_WIDE_INT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ nonzero_sign_valid ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

unsigned int
FUNC4 (rtx x, enum machine_mode mode, int unsignedp)
{
  if (nonzero_sign_valid == 0)
    return 0;

  return (unsignedp
	  ? (FUNC0 (mode) <= HOST_BITS_PER_WIDE_INT
	     ? (unsigned int) (FUNC0 (mode) - 1
			       - FUNC1 (FUNC2 (x, mode)))
	     : 0)
	  : FUNC3 (x, mode) - 1);
}