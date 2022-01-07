
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int out; } ;
struct TYPE_10__ {TYPE_2__ vtable; } ;
struct TYPE_11__ {TYPE_3__ chapol; } ;
struct TYPE_12__ {int ipoly; int ichacha; TYPE_4__ out; TYPE_1__* ichapol_out; } ;
typedef TYPE_5__ br_ssl_engine_context ;
struct TYPE_8__ {int (* init ) (int *,int ,int ,unsigned char*,unsigned char*) ;} ;


 int compute_key_block (TYPE_5__*,int,int,unsigned char*) ;
 int stub1 (int *,int ,int ,unsigned char*,unsigned char*) ;

void
br_ssl_engine_switch_chapol_out(br_ssl_engine_context *cc,
 int is_client, int prf_id)
{
 unsigned char kb[88];
 unsigned char *cipher_key, *iv;

 compute_key_block(cc, prf_id, 44, kb);
 if (is_client) {
  cipher_key = &kb[0];
  iv = &kb[64];
 } else {
  cipher_key = &kb[32];
  iv = &kb[76];
 }
 cc->ichapol_out->init(&cc->out.chapol.vtable.out,
  cc->ichacha, cc->ipoly, cipher_key, iv);
}
