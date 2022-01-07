
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int vtable; } ;
struct TYPE_7__ {size_t tag_len; int iv; TYPE_1__ bc; scalar_t__ seq; } ;
typedef TYPE_2__ br_sslrec_ccm_context ;
struct TYPE_8__ {int (* init ) (int *,void const*,size_t) ;} ;
typedef TYPE_3__ br_block_ctrcbc_class ;


 int memcpy (int ,void const*,int) ;
 int stub1 (int *,void const*,size_t) ;

__attribute__((used)) static void
gen_ccm_init(br_sslrec_ccm_context *cc,
 const br_block_ctrcbc_class *bc_impl,
 const void *key, size_t key_len,
 const void *iv, size_t tag_len)
{
 cc->seq = 0;
 bc_impl->init(&cc->bc.vtable, key, key_len);
 memcpy(cc->iv, iv, sizeof cc->iv);
 cc->tag_len = tag_len;
}
