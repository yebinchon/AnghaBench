
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int length; } ;
struct hash_desc {int dummy; } ;


 int crypto_hash_update (struct hash_desc*,struct scatterlist*,int ) ;

__attribute__((used)) static int
checksummer(struct scatterlist *sg, void *data)
{
 struct hash_desc *desc = data;

 return crypto_hash_update(desc, sg, sg->length);
}
