
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timespec {unsigned int tv_sec; } ;
struct TYPE_4__ {long* x; } ;
struct key {unsigned int expiry; int flags; int type; TYPE_2__ type_data; TYPE_1__* user; int description; } ;
struct TYPE_3__ {int nikeys; } ;


 int EBUSY ;
 int KEY_FLAG_INSTANTIATED ;
 int KEY_FLAG_NEGATIVE ;
 int KEY_FLAG_USER_CONSTRUCT ;
 int __key_link (struct key*,struct key*,unsigned long*) ;
 int __key_link_begin (struct key*,int ,int ,unsigned long*) ;
 int __key_link_end (struct key*,int ,unsigned long) ;
 int atomic_inc (int *) ;
 struct timespec current_kernel_time () ;
 int key_check (struct key*) ;
 int key_construction_mutex ;
 unsigned int key_gc_delay ;
 int key_revoke (struct key*) ;
 int key_schedule_gc (unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 int smp_wmb () ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int wake_up_bit (int *,int ) ;

int key_reject_and_link(struct key *key,
   unsigned timeout,
   unsigned error,
   struct key *keyring,
   struct key *authkey)
{
 unsigned long prealloc;
 struct timespec now;
 int ret, awaken, link_ret = 0;

 key_check(key);
 key_check(keyring);

 awaken = 0;
 ret = -EBUSY;

 if (keyring)
  link_ret = __key_link_begin(keyring, key->type,
         key->description, &prealloc);

 mutex_lock(&key_construction_mutex);


 if (!test_bit(KEY_FLAG_INSTANTIATED, &key->flags)) {

  atomic_inc(&key->user->nikeys);
  key->type_data.x[0] = -(long)error;
  smp_wmb();
  set_bit(KEY_FLAG_NEGATIVE, &key->flags);
  set_bit(KEY_FLAG_INSTANTIATED, &key->flags);
  now = current_kernel_time();
  key->expiry = now.tv_sec + timeout;
  key_schedule_gc(key->expiry + key_gc_delay);

  if (test_and_clear_bit(KEY_FLAG_USER_CONSTRUCT, &key->flags))
   awaken = 1;

  ret = 0;


  if (keyring && link_ret == 0)
   __key_link(keyring, key, &prealloc);


  if (authkey)
   key_revoke(authkey);
 }

 mutex_unlock(&key_construction_mutex);

 if (keyring)
  __key_link_end(keyring, key->type, prealloc);


 if (awaken)
  wake_up_bit(&key->flags, KEY_FLAG_USER_CONSTRUCT);

 return ret == 0 ? link_ret : ret;
}
