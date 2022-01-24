#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {size_t tag_len; unsigned char* cbcmac; int* buf; int ptr; unsigned int* ctr; unsigned char* tagmask; TYPE_2__** bctx; } ;
typedef  TYPE_1__ br_ccm_context ;
struct TYPE_6__ {int /*<<< orphan*/  (* ctr ) (TYPE_2__**,unsigned char*,unsigned char*,int) ;int /*<<< orphan*/  (* mac ) (TYPE_2__**,unsigned char*,unsigned char*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**,unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__**,unsigned char*,unsigned char*,int) ; 

int
FUNC7(br_ccm_context *ctx, const void *nonce, size_t nonce_len,
	uint64_t aad_len, uint64_t data_len, size_t tag_len)
{
	unsigned char tmp[16];
	unsigned u, q;

	if (nonce_len < 7 || nonce_len > 13) {
		return 0;
	}
	if (tag_len < 4 || tag_len > 16 || (tag_len & 1) != 0) {
		return 0;
	}
	q = 15 - (unsigned)nonce_len;
	ctx->tag_len = tag_len;

	/*
	 * Block B0, to start CBC-MAC.
	 */
	tmp[0] = (aad_len > 0 ? 0x40 : 0x00)
		| (((unsigned)tag_len - 2) << 2)
		| (q - 1);
	FUNC3(tmp + 1, nonce, nonce_len);
	for (u = 0; u < q; u ++) {
		tmp[15 - u] = (unsigned char)data_len;
		data_len >>= 8;
	}
	if (data_len != 0) {
		/*
		 * If the data length was not entirely consumed in the
		 * loop above, then it exceeds the maximum limit of
		 * q bytes (when encoded).
		 */
		return 0;
	}

	/*
	 * Start CBC-MAC.
	 */
	FUNC4(ctx->cbcmac, 0, sizeof ctx->cbcmac);
	(*ctx->bctx)->mac(ctx->bctx, ctx->cbcmac, tmp, sizeof tmp);

	/*
	 * Assemble AAD length header.
	 */
	if ((aad_len >> 32) != 0) {
		ctx->buf[0] = 0xFF;
		ctx->buf[1] = 0xFF;
		FUNC2(ctx->buf + 2, aad_len);
		ctx->ptr = 10;
	} else if (aad_len >= 0xFF00) {
		ctx->buf[0] = 0xFF;
		ctx->buf[1] = 0xFE;
		FUNC1(ctx->buf + 2, (uint32_t)aad_len);
		ctx->ptr = 6;
	} else if (aad_len > 0) {
		FUNC0(ctx->buf, (unsigned)aad_len);
		ctx->ptr = 2;
	} else {
		ctx->ptr = 0;
	}

	/*
	 * Make initial counter value and compute tag mask.
	 */
	ctx->ctr[0] = q - 1;
	FUNC3(ctx->ctr + 1, nonce, nonce_len);
	FUNC4(ctx->ctr + 1 + nonce_len, 0, q);
	FUNC4(ctx->tagmask, 0, sizeof ctx->tagmask);
	(*ctx->bctx)->ctr(ctx->bctx, ctx->ctr,
		ctx->tagmask, sizeof ctx->tagmask);

	return 1;
}