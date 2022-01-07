
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int vtable; } ;
typedef TYPE_1__ gen_hash_context ;
struct TYPE_6__ {int count; int buf; TYPE_3__** impl; } ;
typedef TYPE_2__ br_multihash_context ;
struct TYPE_7__ {size_t desc; int (* out ) (int *,void*) ;int (* update ) (int *,int ,int) ;int (* set_state ) (int *,unsigned char const*,int) ;} ;
typedef TYPE_3__ br_hash_class ;


 size_t BR_HASHDESC_OUT_MASK ;
 size_t BR_HASHDESC_OUT_OFF ;
 int get_state_offset (int) ;
 int stub1 (int *,unsigned char const*,int) ;
 int stub2 (int *,int ,int) ;
 int stub3 (int *,void*) ;

size_t
br_multihash_out(const br_multihash_context *ctx, int id, void *dst)
{
 const br_hash_class *hc;
 gen_hash_context g;
 const unsigned char *state;

 hc = ctx->impl[id - 1];
 if (hc == ((void*)0)) {
  return 0;
 }
 state = (const unsigned char *)ctx + get_state_offset(id);
 hc->set_state(&g.vtable, state, ctx->count & ~(uint64_t)127);
 hc->update(&g.vtable, ctx->buf, ctx->count & (uint64_t)127);
 hc->out(&g.vtable, dst);
 return (hc->desc >> BR_HASHDESC_OUT_OFF) & BR_HASHDESC_OUT_MASK;
}
