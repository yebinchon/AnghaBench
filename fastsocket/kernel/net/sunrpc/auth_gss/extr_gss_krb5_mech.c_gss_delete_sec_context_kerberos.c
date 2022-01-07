
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct krb5_ctx* data; } ;
struct krb5_ctx {TYPE_1__ mech_used; int initiator_enc_aux; int acceptor_enc_aux; int initiator_enc; int acceptor_enc; int enc; int seq; } ;


 int crypto_free_blkcipher (int ) ;
 int kfree (struct krb5_ctx*) ;

__attribute__((used)) static void
gss_delete_sec_context_kerberos(void *internal_ctx) {
 struct krb5_ctx *kctx = internal_ctx;

 crypto_free_blkcipher(kctx->seq);
 crypto_free_blkcipher(kctx->enc);
 crypto_free_blkcipher(kctx->acceptor_enc);
 crypto_free_blkcipher(kctx->initiator_enc);
 crypto_free_blkcipher(kctx->acceptor_enc_aux);
 crypto_free_blkcipher(kctx->initiator_enc_aux);
 kfree(kctx->mech_used.data);
 kfree(kctx);
}
