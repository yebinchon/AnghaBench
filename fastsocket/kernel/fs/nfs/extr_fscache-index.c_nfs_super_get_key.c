
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct nfs_server {struct nfs_fscache_key* fscache_key; } ;
struct TYPE_2__ {int uniq_len; struct TYPE_2__* uniquifier; } ;
struct nfs_fscache_key {TYPE_1__ key; } ;


 int memcpy (void*,TYPE_1__*,int) ;

__attribute__((used)) static uint16_t nfs_super_get_key(const void *cookie_netfs_data,
      void *buffer, uint16_t bufmax)
{
 const struct nfs_fscache_key *key;
 const struct nfs_server *nfss = cookie_netfs_data;
 uint16_t len;

 key = nfss->fscache_key;
 len = sizeof(key->key) + key->key.uniq_len;
 if (len > bufmax) {
  len = 0;
 } else {
  memcpy(buffer, &key->key, sizeof(key->key));
  memcpy(buffer + sizeof(key->key),
         key->key.uniquifier, key->key.uniq_len);
 }

 return len;
}
