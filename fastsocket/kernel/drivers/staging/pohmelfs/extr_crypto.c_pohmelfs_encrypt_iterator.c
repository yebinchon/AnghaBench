
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scatterlist {int dummy; } ;
struct pohmelfs_crypto_engine {int timeout; int iv; struct ablkcipher_request* data; } ;
struct ablkcipher_request {int dummy; } ;
typedef int iv ;


 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int pohmelfs_crypto_process (struct ablkcipher_request*,struct scatterlist*,struct scatterlist*,int *,int,int ) ;

__attribute__((used)) static int pohmelfs_encrypt_iterator(struct pohmelfs_crypto_engine *e,
  struct scatterlist *sg_dst, struct scatterlist *sg_src)
{
 struct ablkcipher_request *req = e->data;
 u8 iv[32];

 memset(iv, 0, sizeof(iv));

 memcpy(iv, &e->iv, sizeof(e->iv));

 return pohmelfs_crypto_process(req, sg_dst, sg_src, iv, 1, e->timeout);
}
