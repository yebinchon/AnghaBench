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
struct xfrm_sec_ctx {int ctx_len; struct xfrm_sec_ctx* ctx_str; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct xfrm_sec_ctx* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xfrm_sec_ctx*,struct xfrm_sec_ctx*,int) ; 

int FUNC2(struct xfrm_sec_ctx *old_ctx,
			      struct xfrm_sec_ctx **new_ctxp)
{
	struct xfrm_sec_ctx *new_ctx;

	if (old_ctx) {
		new_ctx = FUNC0(sizeof(*old_ctx) + old_ctx->ctx_len,
				  GFP_KERNEL);
		if (!new_ctx)
			return -ENOMEM;

		FUNC1(new_ctx, old_ctx, sizeof(*new_ctx));
		FUNC1(new_ctx->ctx_str, old_ctx->ctx_str, new_ctx->ctx_len);
		*new_ctxp = new_ctx;
	}
	return 0;
}