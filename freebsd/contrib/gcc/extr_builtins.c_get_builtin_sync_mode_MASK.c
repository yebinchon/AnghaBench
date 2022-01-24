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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int BITS_PER_UNIT ; 
 int /*<<< orphan*/  MODE_INT ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline enum machine_mode
FUNC1 (int fcode_diff)
{
  /* The size is not negotiable, so ask not to get BLKmode in return
     if the target indicates that a smaller size would be better.  */
  return FUNC0 (BITS_PER_UNIT << fcode_diff, MODE_INT, 0);
}