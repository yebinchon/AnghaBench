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
struct dwarf_expr_context {int stack_allocated; scalar_t__ pieces; scalar_t__ num_pieces; int /*<<< orphan*/  stack; scalar_t__ stack_len; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 struct dwarf_expr_context* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

struct dwarf_expr_context *
FUNC2 (void)
{
  struct dwarf_expr_context *retval;
  retval = FUNC0 (1, sizeof (struct dwarf_expr_context));
  retval->stack_len = 0;
  retval->stack_allocated = 10;
  retval->stack = FUNC1 (retval->stack_allocated * sizeof (CORE_ADDR));
  retval->num_pieces = 0;
  retval->pieces = 0;
  return retval;
}