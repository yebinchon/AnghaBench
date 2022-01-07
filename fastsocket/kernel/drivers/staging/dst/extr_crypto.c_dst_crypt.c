
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_crypto_engine {scalar_t__ enc; int cipher; struct ablkcipher_request* data; } ;
struct bio {int dummy; } ;
struct ablkcipher_request {int dummy; } ;


 int ablkcipher_request_set_tfm (struct ablkcipher_request*,int ) ;
 int dst_crypt_iterator ;
 int dst_trans_iter_in (struct bio*,struct dst_crypto_engine*,int ) ;
 int dst_trans_iter_out (struct bio*,struct dst_crypto_engine*,int ) ;
 int memset (struct ablkcipher_request*,int ,int) ;

__attribute__((used)) static int dst_crypt(struct dst_crypto_engine *e, struct bio *bio)
{
 struct ablkcipher_request *req = e->data;

 memset(req, 0, sizeof(struct ablkcipher_request));
 ablkcipher_request_set_tfm(req, e->cipher);

 if (e->enc)
  return dst_trans_iter_out(bio, e, dst_crypt_iterator);
 else
  return dst_trans_iter_in(bio, e, dst_crypt_iterator);
}
