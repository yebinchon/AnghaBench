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
 scalar_t__ ECOFF_DEBUGGING ; 
 int /*<<< orphan*/  ecoff_debug_pseudo_table ; 
 int /*<<< orphan*/  elf_pseudo_table ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void
FUNC1 (void)
{
  FUNC0 (elf_pseudo_table);
  if (ECOFF_DEBUGGING)
    FUNC0 (ecoff_debug_pseudo_table);
}