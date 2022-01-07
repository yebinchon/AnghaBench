
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pohmelfs_crypto {int strlen; int keysize; scalar_t__ data; } ;
struct pohmelfs_config_group {int cipher_strlen; int cipher_key; scalar_t__ cipher_string; int cipher_keysize; } ;


 int EEXIST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (scalar_t__) ;
 int kmalloc (int ,int ) ;
 scalar_t__ kstrdup (char*,int ) ;
 int memcpy (int ,int *,int ) ;

__attribute__((used)) static int pohmelfs_crypto_cipher_init(struct pohmelfs_config_group *g, struct pohmelfs_crypto *c)
{
 char *algo = (char *)c->data;
 u8 *key = (u8 *)(algo + c->strlen);

 if (g->cipher_string)
  return -EEXIST;

 g->cipher_string = kstrdup(algo, GFP_KERNEL);
 if (!g->cipher_string)
  return -ENOMEM;
 g->cipher_strlen = c->strlen;
 g->cipher_keysize = c->keysize;

 g->cipher_key = kmalloc(c->keysize, GFP_KERNEL);
 if (!g->cipher_key) {
  kfree(g->cipher_string);
  return -ENOMEM;
 }

 memcpy(g->cipher_key, key, c->keysize);

 return 0;
}
