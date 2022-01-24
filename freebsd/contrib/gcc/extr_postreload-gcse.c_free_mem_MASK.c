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
 int /*<<< orphan*/  expr_obstack ; 
 int /*<<< orphan*/  expr_table ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  modifies_mem_obstack ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  occr_obstack ; 
 int /*<<< orphan*/  reg_avail_info ; 
 int /*<<< orphan*/  uid_cuid ; 
 int /*<<< orphan*/  unoccr_obstack ; 

__attribute__((used)) static void
FUNC3 (void)
{
  FUNC0 (uid_cuid);

  FUNC1 (expr_table);

  FUNC2 (&expr_obstack, NULL);
  FUNC2 (&occr_obstack, NULL);
  FUNC2 (&unoccr_obstack, NULL);
  FUNC2 (&modifies_mem_obstack, NULL);

  FUNC0 (reg_avail_info);
}