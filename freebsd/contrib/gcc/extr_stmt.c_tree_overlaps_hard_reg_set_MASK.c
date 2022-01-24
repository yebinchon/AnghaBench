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
typedef  int /*<<< orphan*/  HARD_REG_SET ;

/* Variables and functions */
 int /*<<< orphan*/  decl_overlaps_hard_reg_set_p ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

tree
FUNC1 (tree decl, HARD_REG_SET *regs)
{
  return FUNC0 (&decl, decl_overlaps_hard_reg_set_p, regs, NULL);
}