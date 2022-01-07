
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int in; } ;
struct TYPE_10__ {TYPE_2__ vtable; } ;
struct TYPE_11__ {TYPE_3__ gcm; } ;
struct TYPE_12__ {int incrypt; int ighash; TYPE_4__ in; TYPE_1__* igcm_in; } ;
typedef TYPE_5__ br_ssl_engine_context ;
typedef int br_block_ctr_class ;
struct TYPE_8__ {int (* init ) (int *,int const*,unsigned char*,size_t,int ,unsigned char*) ;} ;


 int compute_key_block (TYPE_5__*,int,size_t,unsigned char*) ;
 int stub1 (int *,int const*,unsigned char*,size_t,int ,unsigned char*) ;

void
br_ssl_engine_switch_gcm_in(br_ssl_engine_context *cc,
 int is_client, int prf_id,
 const br_block_ctr_class *bc_impl, size_t cipher_key_len)
{
 unsigned char kb[72];
 unsigned char *cipher_key, *iv;

 compute_key_block(cc, prf_id, cipher_key_len + 4, kb);
 if (is_client) {
  cipher_key = &kb[cipher_key_len];
  iv = &kb[(cipher_key_len << 1) + 4];
 } else {
  cipher_key = &kb[0];
  iv = &kb[cipher_key_len << 1];
 }
 cc->igcm_in->init(&cc->in.gcm.vtable.in,
  bc_impl, cipher_key, cipher_key_len, cc->ighash, iv);
 cc->incrypt = 1;
}
