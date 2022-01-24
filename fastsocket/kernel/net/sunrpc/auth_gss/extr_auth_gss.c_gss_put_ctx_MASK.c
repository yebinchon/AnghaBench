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
struct gss_cl_ctx {int /*<<< orphan*/  count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gss_cl_ctx*) ; 

__attribute__((used)) static inline void
FUNC2(struct gss_cl_ctx *ctx)
{
	if (FUNC0(&ctx->count))
		FUNC1(ctx);
}