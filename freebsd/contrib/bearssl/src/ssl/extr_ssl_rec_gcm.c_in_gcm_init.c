
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * in; } ;
struct TYPE_6__ {TYPE_1__ vtable; } ;
typedef TYPE_2__ br_sslrec_gcm_context ;
typedef int br_ghash ;
typedef int br_block_ctr_class ;


 int br_sslrec_in_gcm_vtable ;
 int gen_gcm_init (TYPE_2__*,int const*,void const*,size_t,int ,void const*) ;

__attribute__((used)) static void
in_gcm_init(br_sslrec_gcm_context *cc,
 const br_block_ctr_class *bc_impl,
 const void *key, size_t key_len,
 br_ghash gh_impl,
 const void *iv)
{
 cc->vtable.in = &br_sslrec_in_gcm_vtable;
 gen_gcm_init(cc, bc_impl, key, key_len, gh_impl, iv);
}
