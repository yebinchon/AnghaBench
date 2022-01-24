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
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  flag_unit_at_a_time ; 
 int /*<<< orphan*/  optimize ; 

__attribute__((used)) static bool
FUNC1 (void)
{
  return (FUNC0 () && (!flag_unit_at_a_time || !optimize));
}