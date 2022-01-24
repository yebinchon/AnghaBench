#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  br_hmac_key_context ;
struct TYPE_3__ {void const* K; void const* V; int /*<<< orphan*/ * digest_class; } ;
typedef  TYPE_1__ br_hmac_drbg_context ;
typedef  int /*<<< orphan*/  br_hmac_context ;
typedef  int /*<<< orphan*/  br_hash_class ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void const*,size_t) ; 

void
FUNC5(br_hmac_drbg_context *ctx, const void *seed, size_t len)
{
	const br_hash_class *dig;
	br_hmac_key_context kc;
	br_hmac_context hc;
	size_t hlen;
	unsigned char x;

	dig = ctx->digest_class;
	hlen = FUNC0(dig);

	/*
	 * 1. K = HMAC(K, V || 0x00 || seed)
	 */
	FUNC2(&kc, dig, ctx->K, hlen);
	FUNC1(&hc, &kc, 0);
	FUNC4(&hc, ctx->V, hlen);
	x = 0x00;
	FUNC4(&hc, &x, 1);
	FUNC4(&hc, seed, len);
	FUNC3(&hc, ctx->K);
	FUNC2(&kc, dig, ctx->K, hlen);

	/*
	 * 2. V = HMAC(K, V)
	 */
	FUNC1(&hc, &kc, 0);
	FUNC4(&hc, ctx->V, hlen);
	FUNC3(&hc, ctx->V);

	/*
	 * 3. If the additional seed is empty, then stop here.
	 */
	if (len == 0) {
		return;
	}

	/*
	 * 4. K = HMAC(K, V || 0x01 || seed)
	 */
	FUNC1(&hc, &kc, 0);
	FUNC4(&hc, ctx->V, hlen);
	x = 0x01;
	FUNC4(&hc, &x, 1);
	FUNC4(&hc, seed, len);
	FUNC3(&hc, ctx->K);
	FUNC2(&kc, dig, ctx->K, hlen);

	/*
	 * 5. V = HMAC(K, V)
	 */
	FUNC1(&hc, &kc, 0);
	FUNC4(&hc, ctx->V, hlen);
	FUNC3(&hc, ctx->V);
}