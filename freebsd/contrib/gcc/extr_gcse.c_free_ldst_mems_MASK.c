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
struct ls_expr {struct ls_expr* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ls_expr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ls_expr* pre_ldst_mems ; 
 int /*<<< orphan*/ * pre_ldst_table ; 

__attribute__((used)) static void
FUNC2 (void)
{
  if (pre_ldst_table)
    FUNC1 (pre_ldst_table);
  pre_ldst_table = NULL;

  while (pre_ldst_mems)
    {
      struct ls_expr * tmp = pre_ldst_mems;

      pre_ldst_mems = pre_ldst_mems->next;

      FUNC0 (tmp);
    }

  pre_ldst_mems = NULL;
}