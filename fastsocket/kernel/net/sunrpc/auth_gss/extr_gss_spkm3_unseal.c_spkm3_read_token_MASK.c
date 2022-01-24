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
struct xdr_netobj {char* data; int /*<<< orphan*/  len; } ;
struct xdr_buf {int dummy; } ;
struct spkm3_ctx {int /*<<< orphan*/  derived_integ_key; int /*<<< orphan*/  intg_alg; int /*<<< orphan*/  mech_used; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ CKSUMTYPE_HMAC_MD5 ; 
 int /*<<< orphan*/  GSS_S_BAD_SIG ; 
 int /*<<< orphan*/  GSS_S_COMPLETE ; 
 int /*<<< orphan*/  GSS_S_DEFECTIVE_TOKEN ; 
 int SPKM_MIC_TOK ; 
 int /*<<< orphan*/  FUNC0 (struct xdr_netobj*,unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct xdr_netobj*,int*,unsigned char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hmac_md5_oid ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ *,unsigned char*,int,struct xdr_buf*,int /*<<< orphan*/ ,struct xdr_netobj*) ; 
 scalar_t__ FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char**,int*,unsigned char**) ; 

u32
FUNC8(struct spkm3_ctx *ctx,
		struct xdr_netobj *read_token,    /* checksum */
		struct xdr_buf *message_buffer, /* signbuf */
		int toktype)
{
	s32			checksum_type;
	s32			code;
	struct xdr_netobj	wire_cksum = {.len =0, .data = NULL};
	char			cksumdata[16];
	struct xdr_netobj	md5cksum = {.len = 0, .data = cksumdata};
	unsigned char		*ptr = (unsigned char *)read_token->data;
	unsigned char		*cksum;
	int			bodysize, md5elen;
	int			mic_hdrlen;
	u32			ret = GSS_S_DEFECTIVE_TOKEN;

	if (FUNC3((struct xdr_netobj *) &ctx->mech_used,
					&bodysize, &ptr, read_token->len))
		goto out;

	/* decode the token */

	if (toktype != SPKM_MIC_TOK) {
		FUNC1("RPC:       BAD SPKM3 token type: %d\n", toktype);
		goto out;
	}

	if ((ret = FUNC7(&ptr, &mic_hdrlen, &cksum)))
		goto out;

	if (*cksum++ != 0x03) {
		FUNC1("RPC:       spkm3_read_token BAD checksum type\n");
		goto out;
	}
	md5elen = *cksum++;
	cksum++; 	/* move past the zbit */

	if (!FUNC0(&wire_cksum, cksum, md5elen - 1, 16))
		goto out;

	/* HARD CODED FOR MD5 */

	/* compute the checksum of the message.
	 * ptr + 2 = start of header piece of checksum
	 * mic_hdrlen + 2 = length of header piece of checksum
	 */
	ret = GSS_S_DEFECTIVE_TOKEN;
	if (!FUNC2(&ctx->intg_alg, &hmac_md5_oid)) {
		FUNC1("RPC:       gss_spkm3_seal: unsupported I-ALG "
				"algorithm\n");
		goto out;
	}

	checksum_type = CKSUMTYPE_HMAC_MD5;

	code = FUNC5(checksum_type,
		&ctx->derived_integ_key, ptr + 2, mic_hdrlen + 2,
		message_buffer, 0, &md5cksum);

	if (code)
		goto out;

	ret = GSS_S_BAD_SIG;
	code = FUNC6(md5cksum.data, wire_cksum.data, wire_cksum.len);
	if (code) {
		FUNC1("RPC:       bad MIC checksum\n");
		goto out;
	}


	/* XXX: need to add expiration and sequencing */
	ret = GSS_S_COMPLETE;
out:
	FUNC4(wire_cksum.data);
	return ret;
}