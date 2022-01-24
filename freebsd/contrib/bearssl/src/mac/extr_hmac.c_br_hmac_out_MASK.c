#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_13__ {TYPE_4__* vtable; } ;
struct TYPE_14__ {size_t out_len; int /*<<< orphan*/  kso; TYPE_1__ dig; } ;
typedef  TYPE_2__ br_hmac_context ;
struct TYPE_15__ {TYPE_4__* vtable; } ;
typedef  TYPE_3__ br_hash_compat_context ;
struct TYPE_16__ {int /*<<< orphan*/  (* out ) (TYPE_4__**,unsigned char*) ;int /*<<< orphan*/  (* update ) (TYPE_4__**,unsigned char*,size_t) ;int /*<<< orphan*/  (* set_state ) (TYPE_4__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* init ) (TYPE_4__**) ;} ;
typedef  TYPE_4__ br_hash_class ;

/* Variables and functions */
 size_t FUNC0 (TYPE_4__ const*) ; 
 size_t FUNC1 (TYPE_4__ const*) ; 
 int /*<<< orphan*/  FUNC2 (void*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__**,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__**,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__**,unsigned char*) ; 

size_t
FUNC8(const br_hmac_context *ctx, void *out)
{
	const br_hash_class *dig;
	br_hash_compat_context hc;
	unsigned char tmp[64];
	size_t blen, hlen;

	dig = ctx->dig.vtable;
	dig->out(&ctx->dig.vtable, tmp);
	blen = FUNC0(dig);
	dig->init(&hc.vtable);
	dig->set_state(&hc.vtable, ctx->kso, (uint64_t)blen);
	hlen = FUNC1(dig);
	dig->update(&hc.vtable, tmp, hlen);
	dig->out(&hc.vtable, tmp);
	FUNC2(out, tmp, ctx->out_len);
	return ctx->out_len;
}