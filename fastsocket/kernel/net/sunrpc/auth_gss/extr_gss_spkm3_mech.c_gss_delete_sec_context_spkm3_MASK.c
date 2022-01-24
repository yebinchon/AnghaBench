#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {struct spkm3_ctx* data; } ;
struct TYPE_11__ {struct spkm3_ctx* data; } ;
struct TYPE_10__ {struct spkm3_ctx* data; } ;
struct TYPE_9__ {struct spkm3_ctx* data; } ;
struct TYPE_8__ {struct spkm3_ctx* data; } ;
struct TYPE_7__ {struct spkm3_ctx* data; } ;
struct spkm3_ctx {TYPE_6__ ctx_id; TYPE_5__ mech_used; TYPE_4__ conf_alg; TYPE_3__ derived_conf_key; TYPE_2__ intg_alg; TYPE_1__ derived_integ_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spkm3_ctx*) ; 

__attribute__((used)) static void
FUNC1(void *internal_ctx)
{
	struct spkm3_ctx *sctx = internal_ctx;

	FUNC0(sctx->derived_integ_key.data);
	FUNC0(sctx->intg_alg.data);
	FUNC0(sctx->derived_conf_key.data);
	FUNC0(sctx->conf_alg.data);
	FUNC0(sctx->mech_used.data);
	FUNC0(sctx->ctx_id.data);
	FUNC0(sctx);
}