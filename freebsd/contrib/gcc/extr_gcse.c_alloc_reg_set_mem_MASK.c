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
struct reg_set {int dummy; } ;

/* Variables and functions */
 scalar_t__ REG_SET_TABLE_SLOP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reg_set_obstack ; 
 int /*<<< orphan*/  reg_set_table ; 
 scalar_t__ reg_set_table_size ; 

__attribute__((used)) static void
FUNC2 (int n_regs)
{
  reg_set_table_size = n_regs + REG_SET_TABLE_SLOP;
  reg_set_table = FUNC0 (reg_set_table_size, sizeof (struct reg_set *));

  FUNC1 (&reg_set_obstack);
}