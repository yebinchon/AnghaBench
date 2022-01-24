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
struct frame_info {int dummy; } ;
struct dwarf_expr_context {scalar_t__ in_reg; int /*<<< orphan*/  get_tls_address; int /*<<< orphan*/  get_frame_base; int /*<<< orphan*/  read_mem; int /*<<< orphan*/  (* read_reg ) (struct frame_info*,int /*<<< orphan*/ ) ;struct frame_info* baton; } ;
typedef  int /*<<< orphan*/  ULONGEST ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dwarf_expr_context*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dwarf_expr_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dwarf_expr_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dwarf_expr_context*) ; 
 struct dwarf_expr_context* FUNC4 () ; 
 int /*<<< orphan*/  no_get_frame_base ; 
 int /*<<< orphan*/  no_get_tls_address ; 
 int /*<<< orphan*/  read_mem ; 
 int /*<<< orphan*/  FUNC5 (struct frame_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static CORE_ADDR
FUNC6 (unsigned char *exp, ULONGEST len,
		  struct frame_info *next_frame, CORE_ADDR initial)
{
  struct dwarf_expr_context *ctx;
  CORE_ADDR result;

  ctx = FUNC4 ();
  ctx->baton = next_frame;
  ctx->read_reg = read_reg;
  ctx->read_mem = read_mem;
  ctx->get_frame_base = no_get_frame_base;
  ctx->get_tls_address = no_get_tls_address;

  FUNC2 (ctx, initial);
  FUNC0 (ctx, exp, len);
  result = FUNC1 (ctx, 0);

  if (ctx->in_reg)
    result = FUNC5 (next_frame, result);

  FUNC3 (ctx);

  return result;
}