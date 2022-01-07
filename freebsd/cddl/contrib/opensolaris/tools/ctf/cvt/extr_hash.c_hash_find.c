
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_data {void* hd_ret; void* hd_key; int hd_fun; int * hd_hash; } ;
typedef int hash_t ;


 int hash_find_first_cb ;
 int hash_match (int *,void*,int ,struct hash_data*) ;

int
hash_find(hash_t *hash, void *key, void **value)
{
 int ret;
 struct hash_data hd;

 hd.hd_hash = hash;
 hd.hd_fun = hash_find_first_cb;
 hd.hd_key = key;

 ret = hash_match(hash, key, hash_find_first_cb, &hd);
 if (ret && value)
  *value = hd.hd_ret;

 return (ret);
}
