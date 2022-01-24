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
typedef  int /*<<< orphan*/  version ;
struct TYPE_2__ {struct spkm3_ctx* data; } ;
struct spkm3_ctx {int endtime; int ret_flags; TYPE_1__ ctx_id; TYPE_1__ mech_used; TYPE_1__ conf_alg; TYPE_1__ derived_conf_key; TYPE_1__ intg_alg; TYPE_1__ derived_integ_key; } ;
struct gss_ctx {struct spkm3_ctx* internal_ctx_id; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFAULT ; 
 int /*<<< orphan*/  EINVAL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void const*) ; 
 int FUNC2 (void const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct spkm3_ctx*) ; 
 struct spkm3_ctx* FUNC5 (int,int /*<<< orphan*/ ) ; 
 void* FUNC6 (void const*,void const*,int*,int) ; 
 void* FUNC7 (void const*,void const*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC8(const void *p, size_t len,
				struct gss_ctx *ctx_id,
				gfp_t gfp_mask)
{
	const void *end = (const void *)((const char *)p + len);
	struct	spkm3_ctx *ctx;
	int	version;

	if (!(ctx = FUNC5(sizeof(*ctx), gfp_mask)))
		goto out_err;

	p = FUNC6(p, end, &version, sizeof(version));
	if (FUNC1(p))
		goto out_err_free_ctx;
	if (version != 1) {
		FUNC3("RPC:       unknown spkm3 token format: "
				"obsolete nfs-utils?\n");
		p = FUNC0(-EINVAL);
		goto out_err_free_ctx;
	}

	p = FUNC7(p, end, &ctx->ctx_id);
	if (FUNC1(p))
		goto out_err_free_ctx;

	p = FUNC6(p, end, &ctx->endtime, sizeof(ctx->endtime));
	if (FUNC1(p))
		goto out_err_free_ctx_id;

	p = FUNC7(p, end, &ctx->mech_used);
	if (FUNC1(p))
		goto out_err_free_ctx_id;

	p = FUNC6(p, end, &ctx->ret_flags, sizeof(ctx->ret_flags));
	if (FUNC1(p))
		goto out_err_free_mech;

	p = FUNC7(p, end, &ctx->conf_alg);
	if (FUNC1(p))
		goto out_err_free_mech;

	p = FUNC7(p, end, &ctx->derived_conf_key);
	if (FUNC1(p))
		goto out_err_free_conf_alg;

	p = FUNC7(p, end, &ctx->intg_alg);
	if (FUNC1(p))
		goto out_err_free_conf_key;

	p = FUNC7(p, end, &ctx->derived_integ_key);
	if (FUNC1(p))
		goto out_err_free_intg_alg;

	if (p != end) {
		p = FUNC0(-EFAULT);
		goto out_err_free_intg_key;
	}

	ctx_id->internal_ctx_id = ctx;

	FUNC3("RPC:       Successfully imported new spkm context.\n");
	return 0;

out_err_free_intg_key:
	FUNC4(ctx->derived_integ_key.data);
out_err_free_intg_alg:
	FUNC4(ctx->intg_alg.data);
out_err_free_conf_key:
	FUNC4(ctx->derived_conf_key.data);
out_err_free_conf_alg:
	FUNC4(ctx->conf_alg.data);
out_err_free_mech:
	FUNC4(ctx->mech_used.data);
out_err_free_ctx_id:
	FUNC4(ctx->ctx_id.data);
out_err_free_ctx:
	FUNC4(ctx);
out_err:
	return FUNC2(p);
}