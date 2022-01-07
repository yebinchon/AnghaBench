
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct keyring_list {int nkeys; struct key** keys; } ;
struct key_type {scalar_t__ (* match ) (struct key*,char const*) ;} ;
struct TYPE_2__ {int subscriptions; } ;
struct key {int usage; int flags; struct key_type const* type; TYPE_1__ payload; } ;
typedef int key_ref_t ;
typedef int key_perm_t ;


 int ENOKEY ;
 int ERR_PTR (int ) ;
 int KEY_FLAG_REVOKED ;
 int atomic_inc (int *) ;
 unsigned long is_key_possessed (int ) ;
 scalar_t__ key_permission (int ,int ) ;
 struct key* key_ref_to_ptr (int ) ;
 int make_key_ref (struct key*,unsigned long) ;
 struct keyring_list* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int smp_rmb () ;
 scalar_t__ stub1 (struct key*,char const*) ;
 int test_bit (int ,int *) ;

key_ref_t __keyring_search_one(key_ref_t keyring_ref,
          const struct key_type *ktype,
          const char *description,
          key_perm_t perm)
{
 struct keyring_list *klist;
 unsigned long possessed;
 struct key *keyring, *key;
 int nkeys, loop;

 keyring = key_ref_to_ptr(keyring_ref);
 possessed = is_key_possessed(keyring_ref);

 rcu_read_lock();

 klist = rcu_dereference(keyring->payload.subscriptions);
 if (klist) {
  nkeys = klist->nkeys;
  smp_rmb();
  for (loop = 0; loop < nkeys ; loop++) {
   key = klist->keys[loop];

   if (key->type == ktype &&
       (!key->type->match ||
        key->type->match(key, description)) &&
       key_permission(make_key_ref(key, possessed),
        perm) == 0 &&
       !test_bit(KEY_FLAG_REVOKED, &key->flags)
       )
    goto found;
  }
 }

 rcu_read_unlock();
 return ERR_PTR(-ENOKEY);

found:
 atomic_inc(&key->usage);
 rcu_read_unlock();
 return make_key_ref(key, possessed);
}
