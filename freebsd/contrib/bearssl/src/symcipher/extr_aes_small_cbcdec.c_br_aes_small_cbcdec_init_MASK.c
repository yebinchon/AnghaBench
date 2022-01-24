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
struct TYPE_3__ {int /*<<< orphan*/  skey; int /*<<< orphan*/  num_rounds; int /*<<< orphan*/ * vtable; } ;
typedef  TYPE_1__ br_aes_small_cbcdec_keys ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void const*,size_t) ; 
 int /*<<< orphan*/  br_aes_small_cbcdec_vtable ; 

void
FUNC1(br_aes_small_cbcdec_keys *ctx,
	const void *key, size_t len)
{
	ctx->vtable = &br_aes_small_cbcdec_vtable;
	ctx->num_rounds = FUNC0(ctx->skey, key, len);
}