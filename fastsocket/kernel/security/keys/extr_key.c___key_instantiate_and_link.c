
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct key {int flags; TYPE_2__* user; TYPE_1__* type; } ;
struct TYPE_4__ {int nikeys; } ;
struct TYPE_3__ {int (* instantiate ) (struct key*,void const*,size_t) ;} ;


 int EBUSY ;
 int KEY_FLAG_INSTANTIATED ;
 int KEY_FLAG_USER_CONSTRUCT ;
 int __key_link (struct key*,struct key*,unsigned long*) ;
 int atomic_inc (int *) ;
 int key_check (struct key*) ;
 int key_construction_mutex ;
 int key_revoke (struct key*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 int stub1 (struct key*,void const*,size_t) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int wake_up_bit (int *,int ) ;

__attribute__((used)) static int __key_instantiate_and_link(struct key *key,
          const void *data,
          size_t datalen,
          struct key *keyring,
          struct key *authkey,
          unsigned long *_prealloc)
{
 int ret, awaken;

 key_check(key);
 key_check(keyring);

 awaken = 0;
 ret = -EBUSY;

 mutex_lock(&key_construction_mutex);


 if (!test_bit(KEY_FLAG_INSTANTIATED, &key->flags)) {

  ret = key->type->instantiate(key, data, datalen);

  if (ret == 0) {

   atomic_inc(&key->user->nikeys);
   set_bit(KEY_FLAG_INSTANTIATED, &key->flags);

   if (test_and_clear_bit(KEY_FLAG_USER_CONSTRUCT, &key->flags))
    awaken = 1;


   if (keyring)
    __key_link(keyring, key, _prealloc);


   if (authkey)
    key_revoke(authkey);
  }
 }

 mutex_unlock(&key_construction_mutex);


 if (awaken)
  wake_up_bit(&key->flags, KEY_FLAG_USER_CONSTRUCT);

 return ret;
}
