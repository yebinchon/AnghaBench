#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  vtable; } ;
typedef  TYPE_1__ gen_hash_context ;
struct TYPE_6__ {TYPE_3__** impl; scalar_t__ count; } ;
typedef  TYPE_2__ br_multihash_context ;
struct TYPE_7__ {int /*<<< orphan*/  (* state ) (int /*<<< orphan*/ *,unsigned char*) ;int /*<<< orphan*/  (* init ) (int /*<<< orphan*/ *) ;} ;
typedef  TYPE_3__ br_hash_class ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*) ; 

void
FUNC3(br_multihash_context *ctx)
{
	int i;

	ctx->count = 0;
	for (i = 1; i <= 6; i ++) {
		const br_hash_class *hc;

		hc = ctx->impl[i - 1];
		if (hc != NULL) {
			gen_hash_context g;

			hc->init(&g.vtable);
			hc->state(&g.vtable,
				(unsigned char *)ctx + FUNC0(i));
		}
	}
}