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
struct dwarf_expr_context {struct dwarf_expr_context* pieces; struct dwarf_expr_context* stack; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dwarf_expr_context*) ; 

void
FUNC1 (struct dwarf_expr_context *ctx)
{
  FUNC0 (ctx->stack);
  FUNC0 (ctx->pieces);
  FUNC0 (ctx);
}