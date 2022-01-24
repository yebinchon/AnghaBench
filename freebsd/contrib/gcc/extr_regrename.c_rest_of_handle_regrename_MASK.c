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
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ flag_cprop_registers ; 
 scalar_t__ flag_rename_registers ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static unsigned int
FUNC2 (void)
{
  if (flag_rename_registers)
    FUNC1 ();
  if (flag_cprop_registers)
    FUNC0 ();
  return 0;
}