#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  const* digest_class; int /*<<< orphan*/  V; int /*<<< orphan*/  K; int /*<<< orphan*/ * vtable; } ;
typedef  TYPE_1__ br_hmac_drbg_context ;
typedef  int /*<<< orphan*/  br_hash_class ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void const*,size_t) ; 
 int /*<<< orphan*/  br_hmac_drbg_vtable ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,size_t) ; 

void
FUNC3(br_hmac_drbg_context *ctx,
	const br_hash_class *digest_class, const void *seed, size_t len)
{
	size_t hlen;

	ctx->vtable = &br_hmac_drbg_vtable;
	hlen = FUNC0(digest_class);
	FUNC2(ctx->K, 0x00, hlen);
	FUNC2(ctx->V, 0x01, hlen);
	ctx->digest_class = digest_class;
	FUNC1(ctx, seed, len);
}