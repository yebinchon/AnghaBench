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
typedef  int u32 ;
struct xdr_netobj {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct xdr_buf {int len; int /*<<< orphan*/ * head; } ;
struct svc_rqst {scalar_t__ rq_deferred; } ;
struct gss_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GSS_S_COMPLETE ; 
 scalar_t__ RPC_MAX_AUTH_SIZE ; 
 int FUNC1 (struct gss_ctx*,struct xdr_buf*,struct xdr_netobj*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct xdr_buf*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (struct xdr_buf*,int,scalar_t__*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct xdr_buf*,struct xdr_buf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct xdr_buf*,scalar_t__) ; 

__attribute__((used)) static int
FUNC9(struct svc_rqst *rqstp, struct xdr_buf *buf, u32 seq, struct gss_ctx *ctx)
{
	int stat = -EINVAL;
	u32 integ_len, maj_stat;
	struct xdr_netobj mic;
	struct xdr_buf integ_buf;

	/* Did we already verify the signature on the original pass through? */
	if (rqstp->rq_deferred)
		return 0;

	integ_len = FUNC6(&buf->head[0]);
	if (integ_len & 3)
		return stat;
	if (integ_len > buf->len)
		return stat;
	if (FUNC7(buf, &integ_buf, 0, integ_len))
		FUNC0();
	/* copy out mic... */
	if (FUNC5(buf, integ_len, &mic.len))
		FUNC0();
	if (mic.len > RPC_MAX_AUTH_SIZE)
		return stat;
	mic.data = FUNC3(mic.len, GFP_KERNEL);
	if (!mic.data)
		return stat;
	if (FUNC4(buf, integ_len + 4, mic.data, mic.len))
		goto out;
	maj_stat = FUNC1(ctx, &integ_buf, &mic);
	if (maj_stat != GSS_S_COMPLETE)
		goto out;
	if (FUNC6(&buf->head[0]) != seq)
		goto out;
	/* trim off the mic at the end before returning */
	FUNC8(buf, mic.len + 4);
	stat = 0;
out:
	FUNC2(mic.data);
	return stat;
}