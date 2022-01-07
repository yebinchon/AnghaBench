
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timespec {scalar_t__ tv_sec; } ;
struct keyring_list {int nkeys; struct key** keys; } ;
struct key_type {int dummy; } ;
struct TYPE_4__ {scalar_t__* x; } ;
struct TYPE_3__ {int subscriptions; } ;
struct key {unsigned long flags; scalar_t__ expiry; int usage; struct key_type* type; TYPE_2__ type_data; TYPE_1__ payload; } ;
struct cred {int dummy; } ;
typedef int key_ref_t ;
typedef scalar_t__ (* key_match_func_t ) (struct key*,void const*) ;


 long EAGAIN ;
 long ENOTDIR ;
 int ERR_PTR (long) ;
 int KEYRING_SEARCH_MAX_DEPTH ;
 int KEY_FLAG_NEGATIVE ;
 int KEY_FLAG_REVOKED ;
 int KEY_SEARCH ;
 int atomic_inc (int *) ;
 struct timespec current_kernel_time () ;
 unsigned long is_key_possessed (int ) ;
 int key_check (struct key*) ;
 struct key* key_ref_to_ptr (int ) ;
 long key_task_permission (int ,struct cred const*,int ) ;
 struct key_type key_type_keyring ;
 int make_key_ref (struct key*,unsigned long) ;
 struct keyring_list* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int smp_rmb () ;
 scalar_t__ test_bit (int,unsigned long*) ;

key_ref_t keyring_search_aux(key_ref_t keyring_ref,
        const struct cred *cred,
        struct key_type *type,
        const void *description,
        key_match_func_t match,
        bool no_state_check)
{
 struct {
  struct keyring_list *keylist;
  int kix;
 } stack[KEYRING_SEARCH_MAX_DEPTH];

 struct keyring_list *keylist;
 struct timespec now;
 unsigned long possessed, kflags;
 struct key *keyring, *key;
 key_ref_t key_ref;
 long err;
 int sp, nkeys, kix;

 keyring = key_ref_to_ptr(keyring_ref);
 possessed = is_key_possessed(keyring_ref);
 key_check(keyring);


 err = key_task_permission(keyring_ref, cred, KEY_SEARCH);
 if (err < 0) {
  key_ref = ERR_PTR(err);
  goto error;
 }

 key_ref = ERR_PTR(-ENOTDIR);
 if (keyring->type != &key_type_keyring)
  goto error;

 rcu_read_lock();

 now = current_kernel_time();
 err = -EAGAIN;
 sp = 0;



 key_ref = ERR_PTR(-EAGAIN);
 kflags = keyring->flags;
 if (keyring->type == type && match(keyring, description)) {
  key = keyring;
  if (no_state_check)
   goto found;



  if (kflags & (1 << KEY_FLAG_REVOKED))
   goto error_2;
  if (key->expiry && now.tv_sec >= key->expiry)
   goto error_2;
  if (kflags & (1 << KEY_FLAG_NEGATIVE)) {
   smp_rmb();
   key_ref = ERR_PTR((long)key->type_data.x[0]);
   goto error_2;
  }
  goto found;
 }



 key_ref = ERR_PTR(-EAGAIN);
 if (kflags & ((1 << KEY_FLAG_REVOKED) | (1 << KEY_FLAG_NEGATIVE)) ||
     (keyring->expiry && now.tv_sec >= keyring->expiry))
  goto error_2;


descend:
 if (test_bit(KEY_FLAG_REVOKED, &keyring->flags))
  goto not_this_keyring;

 keylist = rcu_dereference(keyring->payload.subscriptions);
 if (!keylist)
  goto not_this_keyring;


 nkeys = keylist->nkeys;
 smp_rmb();
 for (kix = 0; kix < nkeys; kix++) {
  key = keylist->keys[kix];
  kflags = key->flags;


  if (key->type != type)
   continue;


  if (!no_state_check) {
   if (kflags & (1 << KEY_FLAG_REVOKED))
    continue;

   if (key->expiry && now.tv_sec >= key->expiry)
    continue;
  }


  if (!match(key, description))
   continue;


  if (key_task_permission(make_key_ref(key, possessed),
     cred, KEY_SEARCH) < 0)
   continue;

  if (no_state_check)
   goto found;


  if (kflags & (1 << KEY_FLAG_NEGATIVE)) {
   smp_rmb();
   err = (long)key->type_data.x[0];
   continue;
  }

  goto found;
 }


 kix = 0;
ascend:
 nkeys = keylist->nkeys;
 smp_rmb();
 for (; kix < nkeys; kix++) {
  key = keylist->keys[kix];
  if (key->type != &key_type_keyring)
   continue;




  if (sp >= KEYRING_SEARCH_MAX_DEPTH)
   continue;

  if (key_task_permission(make_key_ref(key, possessed),
     cred, KEY_SEARCH) < 0)
   continue;


  stack[sp].keylist = keylist;
  stack[sp].kix = kix;
  sp++;


  keyring = key;
  goto descend;
 }



not_this_keyring:
 if (sp > 0) {

  sp--;
  keylist = stack[sp].keylist;
  kix = stack[sp].kix + 1;
  goto ascend;
 }

 key_ref = ERR_PTR(err);
 goto error_2;


found:
 atomic_inc(&key->usage);
 key_check(key);
 key_ref = make_key_ref(key, possessed);
error_2:
 rcu_read_unlock();
error:
 return key_ref;
}
