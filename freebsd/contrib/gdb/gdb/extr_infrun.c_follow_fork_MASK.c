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
 scalar_t__ follow_fork_mode_child ; 
 scalar_t__ follow_fork_mode_string ; 
 int FUNC0 (int) ; 

__attribute__((used)) static int
FUNC1 (void)
{
  int follow_child = (follow_fork_mode_string == follow_fork_mode_child);

  return FUNC0 (follow_child);
}