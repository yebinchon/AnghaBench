
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rxrpc_key_token {TYPE_2__* kad; int security_index; } ;
struct rxrpc_connection {int security_level; int size_align; int security_size; int header_size; struct crypto_blkcipher* cipher; int security_ix; TYPE_3__* key; int debug_id; } ;
struct rxkad_level2_hdr {int dummy; } ;
struct rxkad_level1_hdr {int dummy; } ;
struct crypto_blkcipher {int dummy; } ;
struct TYPE_4__ {struct rxrpc_key_token* data; } ;
struct TYPE_6__ {TYPE_1__ payload; } ;
struct TYPE_5__ {int session_key; } ;


 int BUG () ;
 int CRYPTO_ALG_ASYNC ;
 int EKEYREJECTED ;
 scalar_t__ IS_ERR (struct crypto_blkcipher*) ;
 int PTR_ERR (struct crypto_blkcipher*) ;



 int _debug (char*) ;
 int _enter (char*,int ,int ) ;
 int _leave (char*,int) ;
 struct crypto_blkcipher* crypto_alloc_blkcipher (char*,int ,int ) ;
 scalar_t__ crypto_blkcipher_setkey (struct crypto_blkcipher*,int ,int) ;
 int key_serial (TYPE_3__*) ;

__attribute__((used)) static int rxkad_init_connection_security(struct rxrpc_connection *conn)
{
 struct crypto_blkcipher *ci;
 struct rxrpc_key_token *token;
 int ret;

 _enter("{%d},{%x}", conn->debug_id, key_serial(conn->key));

 token = conn->key->payload.data;
 conn->security_ix = token->security_index;

 ci = crypto_alloc_blkcipher("pcbc(fcrypt)", 0, CRYPTO_ALG_ASYNC);
 if (IS_ERR(ci)) {
  _debug("no cipher");
  ret = PTR_ERR(ci);
  goto error;
 }

 if (crypto_blkcipher_setkey(ci, token->kad->session_key,
        sizeof(token->kad->session_key)) < 0)
  BUG();

 switch (conn->security_level) {
 case 128:
  break;
 case 130:
  conn->size_align = 8;
  conn->security_size = sizeof(struct rxkad_level1_hdr);
  conn->header_size += sizeof(struct rxkad_level1_hdr);
  break;
 case 129:
  conn->size_align = 8;
  conn->security_size = sizeof(struct rxkad_level2_hdr);
  conn->header_size += sizeof(struct rxkad_level2_hdr);
  break;
 default:
  ret = -EKEYREJECTED;
  goto error;
 }

 conn->cipher = ci;
 ret = 0;
error:
 _leave(" = %d", ret);
 return ret;
}
