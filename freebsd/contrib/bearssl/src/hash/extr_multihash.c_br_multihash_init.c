
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int vtable; } ;
typedef TYPE_1__ gen_hash_context ;
struct TYPE_6__ {TYPE_3__** impl; scalar_t__ count; } ;
typedef TYPE_2__ br_multihash_context ;
struct TYPE_7__ {int (* state ) (int *,unsigned char*) ;int (* init ) (int *) ;} ;
typedef TYPE_3__ br_hash_class ;


 int get_state_offset (int) ;
 int stub1 (int *) ;
 int stub2 (int *,unsigned char*) ;

void
br_multihash_init(br_multihash_context *ctx)
{
 int i;

 ctx->count = 0;
 for (i = 1; i <= 6; i ++) {
  const br_hash_class *hc;

  hc = ctx->impl[i - 1];
  if (hc != ((void*)0)) {
   gen_hash_context g;

   hc->init(&g.vtable);
   hc->state(&g.vtable,
    (unsigned char *)ctx + get_state_offset(i));
  }
 }
}
