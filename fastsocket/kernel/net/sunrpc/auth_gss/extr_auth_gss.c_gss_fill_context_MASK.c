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
typedef  int /*<<< orphan*/  window_size ;
typedef  unsigned int u32 ;
typedef  int /*<<< orphan*/  timeout ;
struct gss_cl_ctx {unsigned int gc_win; int /*<<< orphan*/  gc_gss_ctx; int /*<<< orphan*/  gc_wire_ctx; scalar_t__ gc_expiry; } ;
struct gss_api_mech {int dummy; } ;
typedef  int /*<<< orphan*/  seclen ;
typedef  int /*<<< orphan*/  ret ;

/* Variables and functions */
 int EACCES ; 
 int EFAULT ; 
 int EKEYEXPIRED ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 unsigned int GSSD_MIN_TIMEOUT ; 
 unsigned long HZ ; 
 scalar_t__ FUNC1 (void const*) ; 
 int /*<<< orphan*/  FUNC2 (void const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (void const*,unsigned int,struct gss_api_mech*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 void* FUNC5 (void const*,void const*,...) ; 
 void* FUNC6 (void const*,void const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static const void *
FUNC8(const void *p, const void *end, struct gss_cl_ctx *ctx, struct gss_api_mech *gm)
{
	const void *q;
	unsigned int seclen;
	unsigned int timeout;
	u32 window_size;
	int ret;

	/* First unsigned int gives the lifetime (in seconds) of the cred */
	p = FUNC5(p, end, &timeout, sizeof(timeout));
	if (FUNC1(p))
		goto err;
	if (timeout == 0)
		timeout = GSSD_MIN_TIMEOUT;
	ctx->gc_expiry = jiffies + (unsigned long)timeout * HZ * 3 / 4;
	/* Sequence number window. Determines the maximum number of simultaneous requests */
	p = FUNC5(p, end, &window_size, sizeof(window_size));
	if (FUNC1(p))
		goto err;
	ctx->gc_win = window_size;
	/* gssd signals an error by passing ctx->gc_win = 0: */
	if (ctx->gc_win == 0) {
		/*
		 * in which case, p points to an error code. Anything other
		 * than -EKEYEXPIRED gets converted to -EACCES.
		 */
		p = FUNC5(p, end, &ret, sizeof(ret));
		if (!FUNC1(p))
			p = (ret == -EKEYEXPIRED) ? FUNC0(-EKEYEXPIRED) :
						    FUNC0(-EACCES);
		goto err;
	}
	/* copy the opaque wire context */
	p = FUNC6(p, end, &ctx->gc_wire_ctx);
	if (FUNC1(p))
		goto err;
	/* import the opaque security context */
	p  = FUNC5(p, end, &seclen, sizeof(seclen));
	if (FUNC1(p))
		goto err;
	q = (const void *)((const char *)p + seclen);
	if (FUNC7(q > end || q < p)) {
		p = FUNC0(-EFAULT);
		goto err;
	}
	ret = FUNC4(p, seclen, gm, &ctx->gc_gss_ctx, GFP_NOFS);
	if (ret < 0) {
		p = FUNC0(ret);
		goto err;
	}
	return q;
err:
	FUNC3("RPC:       gss_fill_context returning %ld\n", -FUNC2(p));
	return p;
}