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

/* Variables and functions */
 int /*<<< orphan*/  current_loops ; 
 scalar_t__ flag_peel_loops ; 
 scalar_t__ flag_unroll_loops ; 
 int optimize ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static unsigned int
FUNC1 (void)
{
  if (!current_loops)
    return 0;

  return FUNC0 (current_loops,
				       flag_unroll_loops
					|| flag_peel_loops
					|| optimize >= 3);
}