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
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  temp_slot_p ; 
 int /*<<< orphan*/  used_temp_slots ; 

__attribute__((used)) static int
FUNC1 (void)
{
  if (!used_temp_slots)
    return -1;

  return FUNC0 (temp_slot_p, used_temp_slots) - 1;
}