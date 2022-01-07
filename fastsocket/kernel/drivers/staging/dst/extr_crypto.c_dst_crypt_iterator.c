
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scatterlist {int dummy; } ;
struct dst_crypto_engine {int timeout; int enc; int iv; struct ablkcipher_request* data; } ;
struct ablkcipher_request {int dummy; } ;
typedef int iv ;


 int dst_crypto_process (struct ablkcipher_request*,struct scatterlist*,struct scatterlist*,int *,int ,int ) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int dst_crypt_iterator(struct dst_crypto_engine *e,
  struct scatterlist *sg_dst, struct scatterlist *sg_src)
{
 struct ablkcipher_request *req = e->data;
 u8 iv[32];

 memset(iv, 0, sizeof(iv));

 memcpy(iv, &e->iv, sizeof(e->iv));

 return dst_crypto_process(req, sg_dst, sg_src, iv, e->enc, e->timeout);
}
