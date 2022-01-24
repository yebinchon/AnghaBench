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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  blocks_with_calls ; 
 int /*<<< orphan*/  cuid_insn ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  modify_mem_list_set ; 
 int /*<<< orphan*/  reg_set_bitmap ; 
 int /*<<< orphan*/  reg_set_in_block ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uid_cuid ; 

__attribute__((used)) static void
FUNC4 (void)
{
  FUNC1 (uid_cuid);
  FUNC1 (cuid_insn);

  FUNC0 (reg_set_bitmap);

  FUNC3 (reg_set_in_block);
  FUNC2 ();
  FUNC0 (modify_mem_list_set);
  FUNC0 (blocks_with_calls);
}