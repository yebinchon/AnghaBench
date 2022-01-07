
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct crypto_blkcipher* data; } ;
struct key {TYPE_1__ payload; int type_data; } ;
struct crypto_blkcipher {int dummy; } ;


 int BUG () ;
 int CRYPTO_ALG_ASYNC ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct crypto_blkcipher*) ;
 int PTR_ERR (struct crypto_blkcipher*) ;
 int _enter (char*,int ,size_t) ;
 int _leave (char*,...) ;
 struct crypto_blkcipher* crypto_alloc_blkcipher (char*,int ,int ) ;
 scalar_t__ crypto_blkcipher_setkey (struct crypto_blkcipher*,void const*,int) ;
 int key_serial (struct key*) ;
 int memcpy (int *,void const*,int) ;

__attribute__((used)) static int rxrpc_instantiate_s(struct key *key, const void *data,
          size_t datalen)
{
 struct crypto_blkcipher *ci;

 _enter("{%x},,%zu", key_serial(key), datalen);

 if (datalen != 8)
  return -EINVAL;

 memcpy(&key->type_data, data, 8);

 ci = crypto_alloc_blkcipher("pcbc(des)", 0, CRYPTO_ALG_ASYNC);
 if (IS_ERR(ci)) {
  _leave(" = %ld", PTR_ERR(ci));
  return PTR_ERR(ci);
 }

 if (crypto_blkcipher_setkey(ci, data, 8) < 0)
  BUG();

 key->payload.data = ci;
 _leave(" = 0");
 return 0;
}
