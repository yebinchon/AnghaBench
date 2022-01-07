
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct rxrpc_crypt {int x; } ;
struct rxrpc_connection {int cipher; } ;
struct rxkad_response {int encrypted; } ;
struct rxkad_key {int session_key; } ;
struct blkcipher_desc {scalar_t__ flags; int info; int tfm; } ;
typedef int iv ;


 int crypto_blkcipher_encrypt_iv (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int) ;
 int memcpy (struct rxrpc_crypt*,int ,int) ;
 int rxkad_sg_set_buf2 (struct scatterlist*,int *,int) ;

__attribute__((used)) static void rxkad_encrypt_response(struct rxrpc_connection *conn,
       struct rxkad_response *resp,
       const struct rxkad_key *s2)
{
 struct blkcipher_desc desc;
 struct rxrpc_crypt iv;
 struct scatterlist sg[2];


 memcpy(&iv, s2->session_key, sizeof(iv));
 desc.tfm = conn->cipher;
 desc.info = iv.x;
 desc.flags = 0;

 rxkad_sg_set_buf2(sg, &resp->encrypted, sizeof(resp->encrypted));
 crypto_blkcipher_encrypt_iv(&desc, sg, sg, sizeof(resp->encrypted));
}
