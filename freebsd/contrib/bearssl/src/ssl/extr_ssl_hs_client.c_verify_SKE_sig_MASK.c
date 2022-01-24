#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  ec; int /*<<< orphan*/  rsa; } ;
struct TYPE_11__ {TYPE_1__ key; } ;
typedef  TYPE_3__ br_x509_pkey ;
struct TYPE_12__ {TYPE_3__* (* get_pkey ) (TYPE_4__ const**,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_4__ br_x509_class ;
struct TYPE_10__ {unsigned char* client_random; unsigned char* server_random; unsigned char ecdhe_curve; unsigned char ecdhe_point_len; unsigned char* ecdhe_point; int /*<<< orphan*/  pad; int /*<<< orphan*/  iec; int /*<<< orphan*/  (* iecdsa ) (int /*<<< orphan*/ ,unsigned char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ;int /*<<< orphan*/  (* irsavrfy ) (int /*<<< orphan*/ ,size_t,unsigned char const*,size_t,int /*<<< orphan*/ *,unsigned char*) ;int /*<<< orphan*/  mhash; TYPE_4__** x509ctx; } ;
struct TYPE_13__ {TYPE_2__ eng; } ;
typedef  TYPE_5__ br_ssl_client_context ;
typedef  int /*<<< orphan*/  br_multihash_context ;

/* Variables and functions */
 int BR_ERR_BAD_SIGNATURE ; 
 int BR_ERR_INVALID_ALGORITHM ; 
 unsigned char** HASH_OID ; 
 int br_md5_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int br_sha1_ID ; 
 scalar_t__ FUNC5 (unsigned char*,unsigned char*,size_t) ; 
 TYPE_3__* FUNC6 (TYPE_4__ const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,size_t,unsigned char const*,size_t,int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int
FUNC9(br_ssl_client_context *ctx,
	int hash, int use_rsa, size_t sig_len)
{
	const br_x509_class **xc;
	const br_x509_pkey *pk;
	br_multihash_context mhc;
	unsigned char hv[64], head[4];
	size_t hv_len;

	xc = ctx->eng.x509ctx;
	pk = (*xc)->get_pkey(xc, NULL);
	FUNC4(&mhc);
	FUNC0(&mhc, &ctx->eng.mhash);
	FUNC1(&mhc);
	FUNC3(&mhc,
		ctx->eng.client_random, sizeof ctx->eng.client_random);
	FUNC3(&mhc,
		ctx->eng.server_random, sizeof ctx->eng.server_random);
	head[0] = 3;
	head[1] = 0;
	head[2] = ctx->eng.ecdhe_curve;
	head[3] = ctx->eng.ecdhe_point_len;
	FUNC3(&mhc, head, sizeof head);
	FUNC3(&mhc,
		ctx->eng.ecdhe_point, ctx->eng.ecdhe_point_len);
	if (hash) {
		hv_len = FUNC2(&mhc, hash, hv);
		if (hv_len == 0) {
			return BR_ERR_INVALID_ALGORITHM;
		}
	} else {
		if (!FUNC2(&mhc, br_md5_ID, hv)
			|| !FUNC2(&mhc, br_sha1_ID, hv + 16))
		{
			return BR_ERR_INVALID_ALGORITHM;
		}
		hv_len = 36;
	}
	if (use_rsa) {
		unsigned char tmp[64];
		const unsigned char *hash_oid;

		if (hash) {
			hash_oid = HASH_OID[hash - 2];
		} else {
			hash_oid = NULL;
		}
		if (!ctx->eng.irsavrfy(ctx->eng.pad, sig_len,
			hash_oid, hv_len, &pk->key.rsa, tmp)
			|| FUNC5(tmp, hv, hv_len) != 0)
		{
			return BR_ERR_BAD_SIGNATURE;
		}
	} else {
		if (!ctx->eng.iecdsa(ctx->eng.iec, hv, hv_len, &pk->key.ec,
			ctx->eng.pad, sig_len))
		{
			return BR_ERR_BAD_SIGNATURE;
		}
	}
	return 0;
}