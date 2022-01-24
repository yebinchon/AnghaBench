#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct gss_cl_ctx* data; } ;
struct gss_cl_ctx {TYPE_1__ gc_wire_ctx; int /*<<< orphan*/  gc_gss_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct gss_cl_ctx*) ; 

__attribute__((used)) static void
FUNC3(struct gss_cl_ctx *ctx)
{
	FUNC0("RPC:       gss_free_ctx\n");

	FUNC1(&ctx->gc_gss_ctx);
	FUNC2(ctx->gc_wire_ctx.data);
	FUNC2(ctx);
}