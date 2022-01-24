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
 int /*<<< orphan*/  BIGGEST_ALIGNMENT ; 
 int BITS_PER_UNIT ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* mode_base_align ; 

unsigned int
FUNC2 (enum machine_mode mode)
{
  return FUNC1 (BIGGEST_ALIGNMENT, FUNC0 (1, mode_base_align[mode]*BITS_PER_UNIT));
}