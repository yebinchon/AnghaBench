
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * in; } ;
struct TYPE_6__ {TYPE_1__ vtable; } ;
typedef TYPE_2__ br_sslrec_ccm_context ;
typedef int br_block_ctrcbc_class ;


 int br_sslrec_in_ccm_vtable ;
 int gen_ccm_init (TYPE_2__*,int const*,void const*,size_t,void const*,size_t) ;

__attribute__((used)) static void
in_ccm_init(br_sslrec_ccm_context *cc,
 const br_block_ctrcbc_class *bc_impl,
 const void *key, size_t key_len,
 const void *iv, size_t tag_len)
{
 cc->vtable.in = &br_sslrec_in_ccm_vtable;
 gen_ccm_init(cc, bc_impl, key, key_len, iv, tag_len);
}
