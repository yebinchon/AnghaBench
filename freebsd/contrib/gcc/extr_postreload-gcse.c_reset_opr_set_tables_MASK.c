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
 int FIRST_PSEUDO_REGISTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * modifies_mem_list ; 
 int /*<<< orphan*/  modifies_mem_obstack ; 
 int /*<<< orphan*/  modifies_mem_obstack_bottom ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reg_avail_info ; 

__attribute__((used)) static void
FUNC2 (void)
{
  FUNC0 (reg_avail_info, 0, FIRST_PSEUDO_REGISTER * sizeof (int));
  FUNC1 (&modifies_mem_obstack, modifies_mem_obstack_bottom);
  modifies_mem_list = NULL;
}