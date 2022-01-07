
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pohmelfs_crypto_engine {int iv; int cipher; struct ablkcipher_request* data; } ;
struct pohmelfs_crypto_thread {struct pohmelfs_crypto_engine eng; struct netfs_trans* trans; } ;
struct netfs_trans {int dummy; } ;
struct ablkcipher_request {int dummy; } ;


 int ablkcipher_request_set_tfm (struct ablkcipher_request*,int ) ;
 int memset (struct ablkcipher_request*,int ,int) ;
 int pohmelfs_encrypt_iterator ;
 int pohmelfs_gen_iv (struct netfs_trans*) ;
 int pohmelfs_trans_iter (struct netfs_trans*,struct pohmelfs_crypto_engine*,int ) ;

__attribute__((used)) static int pohmelfs_encrypt(struct pohmelfs_crypto_thread *tc)
{
 struct netfs_trans *t = tc->trans;
 struct pohmelfs_crypto_engine *e = &tc->eng;
 struct ablkcipher_request *req = e->data;

 memset(req, 0, sizeof(struct ablkcipher_request));
 ablkcipher_request_set_tfm(req, e->cipher);

 e->iv = pohmelfs_gen_iv(t);

 return pohmelfs_trans_iter(t, e, pohmelfs_encrypt_iterator);
}
