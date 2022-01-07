
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int type; int description; } ;


 int __key_instantiate_and_link (struct key*,void const*,size_t,struct key*,struct key*,unsigned long*) ;
 int __key_link_begin (struct key*,int ,int ,unsigned long*) ;
 int __key_link_end (struct key*,int ,unsigned long) ;

int key_instantiate_and_link(struct key *key,
        const void *data,
        size_t datalen,
        struct key *keyring,
        struct key *authkey)
{
 unsigned long prealloc;
 int ret;

 if (keyring) {
  ret = __key_link_begin(keyring, key->type, key->description,
           &prealloc);
  if (ret < 0)
   return ret;
 }

 ret = __key_instantiate_and_link(key, data, datalen, keyring, authkey,
      &prealloc);

 if (keyring)
  __key_link_end(keyring, key->type, prealloc);

 return ret;
}
