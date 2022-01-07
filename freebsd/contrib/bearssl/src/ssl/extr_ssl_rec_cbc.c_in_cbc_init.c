
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int vtable; } ;
struct TYPE_7__ {size_t mac_len; int explicit_IV; int iv; int mac; TYPE_1__ bc; scalar_t__ seq; int * vtable; } ;
typedef TYPE_2__ br_sslrec_in_cbc_context ;
typedef int br_hash_class ;
struct TYPE_8__ {int block_size; int (* init ) (int *,void const*,size_t) ;} ;
typedef TYPE_3__ br_block_cbcdec_class ;


 int br_hmac_key_init (int *,int const*,void const*,size_t) ;
 int br_sslrec_in_cbc_vtable ;
 int memcpy (int ,void const*,int ) ;
 int memset (int ,int ,int) ;
 int stub1 (int *,void const*,size_t) ;

__attribute__((used)) static void
in_cbc_init(br_sslrec_in_cbc_context *cc,
 const br_block_cbcdec_class *bc_impl,
 const void *bc_key, size_t bc_key_len,
 const br_hash_class *dig_impl,
 const void *mac_key, size_t mac_key_len, size_t mac_out_len,
 const void *iv)
{
 cc->vtable = &br_sslrec_in_cbc_vtable;
 cc->seq = 0;
 bc_impl->init(&cc->bc.vtable, bc_key, bc_key_len);
 br_hmac_key_init(&cc->mac, dig_impl, mac_key, mac_key_len);
 cc->mac_len = mac_out_len;
 if (iv == ((void*)0)) {
  memset(cc->iv, 0, sizeof cc->iv);
  cc->explicit_IV = 1;
 } else {
  memcpy(cc->iv, iv, bc_impl->block_size);
  cc->explicit_IV = 0;
 }
}
