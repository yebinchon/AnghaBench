
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int length; } ;
struct pohmelfs_crypto_engine {int data; } ;


 int crypto_hash_update (int ,struct scatterlist*,int ) ;

__attribute__((used)) static int pohmelfs_hash_iterator(struct pohmelfs_crypto_engine *e,
  struct scatterlist *sg_dst, struct scatterlist *sg_src)
{
 return crypto_hash_update(e->data, sg_src, sg_src->length);
}
