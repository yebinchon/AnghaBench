
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct rxrpc_crypt {int x; int * n; } ;
struct rxrpc_connection {int dummy; } ;
struct rxkad_response {int encrypted; } ;
struct blkcipher_desc {scalar_t__ flags; int info; int * tfm; } ;
typedef int iv ;


 int ASSERT (int ) ;
 int BUG () ;
 int _enter (char*,int ,int ) ;
 int _leave (char*) ;
 int crypto_blkcipher_decrypt_iv (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int) ;
 scalar_t__ crypto_blkcipher_setkey (int *,int ,int) ;
 int memcpy (struct rxrpc_crypt*,struct rxrpc_crypt const*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ntohl (int ) ;
 int * rxkad_ci ;
 int rxkad_ci_mutex ;
 int rxkad_sg_set_buf2 (struct scatterlist*,int *,int) ;

__attribute__((used)) static void rxkad_decrypt_response(struct rxrpc_connection *conn,
       struct rxkad_response *resp,
       const struct rxrpc_crypt *session_key)
{
 struct blkcipher_desc desc;
 struct scatterlist sg[2];
 struct rxrpc_crypt iv;

 _enter(",,%08x%08x",
        ntohl(session_key->n[0]), ntohl(session_key->n[1]));

 ASSERT(rxkad_ci != ((void*)0));

 mutex_lock(&rxkad_ci_mutex);
 if (crypto_blkcipher_setkey(rxkad_ci, session_key->x,
        sizeof(*session_key)) < 0)
  BUG();

 memcpy(&iv, session_key, sizeof(iv));
 desc.tfm = rxkad_ci;
 desc.info = iv.x;
 desc.flags = 0;

 rxkad_sg_set_buf2(sg, &resp->encrypted, sizeof(resp->encrypted));
 crypto_blkcipher_decrypt_iv(&desc, sg, sg, sizeof(resp->encrypted));
 mutex_unlock(&rxkad_ci_mutex);

 _leave("");
}
