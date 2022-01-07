
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pohmelfs_crypto {int strlen; int keysize; scalar_t__ data; } ;
struct pohmelfs_config_group {int hash_strlen; int hash_key; scalar_t__ hash_string; int hash_keysize; } ;


 int EEXIST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (scalar_t__) ;
 int kmalloc (int ,int ) ;
 scalar_t__ kstrdup (char*,int ) ;
 int memcpy (int ,int *,int ) ;

__attribute__((used)) static int pohmelfs_crypto_hash_init(struct pohmelfs_config_group *g, struct pohmelfs_crypto *c)
{
 char *algo = (char *)c->data;
 u8 *key = (u8 *)(algo + c->strlen);

 if (g->hash_string)
  return -EEXIST;

 g->hash_string = kstrdup(algo, GFP_KERNEL);
 if (!g->hash_string)
  return -ENOMEM;
 g->hash_strlen = c->strlen;
 g->hash_keysize = c->keysize;

 g->hash_key = kmalloc(c->keysize, GFP_KERNEL);
 if (!g->hash_key) {
  kfree(g->hash_string);
  return -ENOMEM;
 }

 memcpy(g->hash_key, key, c->keysize);

 return 0;
}
