
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {struct spkm3_ctx* data; } ;
struct TYPE_11__ {struct spkm3_ctx* data; } ;
struct TYPE_10__ {struct spkm3_ctx* data; } ;
struct TYPE_9__ {struct spkm3_ctx* data; } ;
struct TYPE_8__ {struct spkm3_ctx* data; } ;
struct TYPE_7__ {struct spkm3_ctx* data; } ;
struct spkm3_ctx {TYPE_6__ ctx_id; TYPE_5__ mech_used; TYPE_4__ conf_alg; TYPE_3__ derived_conf_key; TYPE_2__ intg_alg; TYPE_1__ derived_integ_key; } ;


 int kfree (struct spkm3_ctx*) ;

__attribute__((used)) static void
gss_delete_sec_context_spkm3(void *internal_ctx)
{
 struct spkm3_ctx *sctx = internal_ctx;

 kfree(sctx->derived_integ_key.data);
 kfree(sctx->intg_alg.data);
 kfree(sctx->derived_conf_key.data);
 kfree(sctx->conf_alg.data);
 kfree(sctx->mech_used.data);
 kfree(sctx->ctx_id.data);
 kfree(sctx);
}
