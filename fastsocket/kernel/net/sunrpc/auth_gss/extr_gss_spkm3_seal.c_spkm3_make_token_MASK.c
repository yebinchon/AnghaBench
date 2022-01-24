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
typedef  int /*<<< orphan*/  u32 ;
struct xdr_netobj {int len; char* data; } ;
struct xdr_buf {int dummy; } ;
struct spkm3_ctx {int /*<<< orphan*/  mech_used; int /*<<< orphan*/  derived_integ_key; struct xdr_netobj ctx_id; int /*<<< orphan*/  conf_alg; int /*<<< orphan*/  intg_alg; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  CKSUMTYPE_HMAC_MD5 ; 
 int /*<<< orphan*/  GSS_S_COMPLETE ; 
 int /*<<< orphan*/  GSS_S_FAILURE ; 
 int SPKM_MIC_TOK ; 
 int SPKM_WRAP_TOK ; 
 int /*<<< orphan*/  FUNC0 (struct xdr_netobj*,int*,int*) ; 
 int /*<<< orphan*/  cast5_cbc_oid ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,unsigned char**) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  hmac_md5_oid ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int,struct xdr_buf*,int /*<<< orphan*/ ,struct xdr_netobj*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char**,int,struct xdr_netobj*,struct xdr_netobj*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char**,int*,unsigned char*,int,int) ; 

u32
FUNC8(struct spkm3_ctx *ctx,
		   struct xdr_buf * text, struct xdr_netobj * token,
		   int toktype)
{
	s32			checksum_type;
	char			tokhdrbuf[25];
	char			cksumdata[16];
	struct xdr_netobj	md5cksum = {.len = 0, .data = cksumdata};
	struct xdr_netobj	mic_hdr = {.len = 0, .data = tokhdrbuf};
	int			tokenlen = 0;
	unsigned char		*ptr;
	s32			now;
	int			ctxelen = 0, ctxzbit = 0;
	int			md5elen = 0, md5zbit = 0;

	now = jiffies;

	if (ctx->ctx_id.len != 16) {
		FUNC1("RPC:       spkm3_make_token BAD ctx_id.len %d\n",
				ctx->ctx_id.len);
		goto out_err;
	}

	if (!FUNC2(&ctx->intg_alg, &hmac_md5_oid)) {
		FUNC1("RPC:       gss_spkm3_seal: unsupported I-ALG "
				"algorithm.  only support hmac-md5 I-ALG.\n");
		goto out_err;
	} else
		checksum_type = CKSUMTYPE_HMAC_MD5;

	if (!FUNC2(&ctx->conf_alg, &cast5_cbc_oid)) {
		FUNC1("RPC:       gss_spkm3_seal: unsupported C-ALG "
				"algorithm\n");
		goto out_err;
	}

	if (toktype == SPKM_MIC_TOK) {
		/* Calculate checksum over the mic-header */
		FUNC0(&ctx->ctx_id, &ctxelen, &ctxzbit);
		FUNC7(&mic_hdr.data, &mic_hdr.len, ctx->ctx_id.data,
				ctxelen, ctxzbit);
		if (FUNC5(checksum_type, &ctx->derived_integ_key,
					(char *)mic_hdr.data, mic_hdr.len,
					text, 0, &md5cksum))
			goto out_err;

		FUNC0(&md5cksum, &md5elen, &md5zbit);
		tokenlen = 10 + ctxelen + 1 + md5elen + 1;

		/* Create token header using generic routines */
		token->len = FUNC4(&ctx->mech_used, tokenlen + 2);

		ptr = token->data;
		FUNC3(&ctx->mech_used, tokenlen + 2, &ptr);

		FUNC6(&ptr, tokenlen, &mic_hdr, &md5cksum, md5elen, md5zbit);
	} else if (toktype == SPKM_WRAP_TOK) { /* Not Supported */
		FUNC1("RPC:       gss_spkm3_seal: SPKM_WRAP_TOK "
				"not supported\n");
		goto out_err;
	}

	/* XXX need to implement sequence numbers, and ctx->expired */

	return  GSS_S_COMPLETE;
out_err:
	token->data = NULL;
	token->len = 0;
	return GSS_S_FAILURE;
}