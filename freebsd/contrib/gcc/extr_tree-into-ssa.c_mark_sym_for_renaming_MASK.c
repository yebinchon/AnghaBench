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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ need_to_initialize_update_ssa_p ; 
 int need_to_update_vops_p ; 
 int /*<<< orphan*/  syms_to_rename ; 

void
FUNC4 (tree sym)
{
  if (need_to_initialize_update_ssa_p)
    FUNC2 ();

  FUNC1 (syms_to_rename, FUNC0 (sym));

  if (!FUNC3 (sym))
    need_to_update_vops_p = true;
}