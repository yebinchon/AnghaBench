
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct keyring_list {int nkeys; struct key** keys; } ;
struct TYPE_2__ {int subscriptions; } ;
struct key {int * type; TYPE_1__ payload; int flags; } ;


 int EDEADLK ;
 int ELOOP ;
 int KEYRING_SEARCH_MAX_DEPTH ;
 int KEY_FLAG_REVOKED ;
 int key_type_keyring ;
 struct keyring_list* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int smp_rmb () ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int keyring_detect_cycle(struct key *A, struct key *B)
{
 struct {
  struct keyring_list *keylist;
  int kix;
 } stack[KEYRING_SEARCH_MAX_DEPTH];

 struct keyring_list *keylist;
 struct key *subtree, *key;
 int sp, nkeys, kix, ret;

 rcu_read_lock();

 ret = -EDEADLK;
 if (A == B)
  goto cycle_detected;

 subtree = B;
 sp = 0;


descend:
 if (test_bit(KEY_FLAG_REVOKED, &subtree->flags))
  goto not_this_keyring;

 keylist = rcu_dereference(subtree->payload.subscriptions);
 if (!keylist)
  goto not_this_keyring;
 kix = 0;

ascend:

 nkeys = keylist->nkeys;
 smp_rmb();
 for (; kix < nkeys; kix++) {
  key = keylist->keys[kix];

  if (key == A)
   goto cycle_detected;


  if (key->type == &key_type_keyring) {
   if (sp >= KEYRING_SEARCH_MAX_DEPTH)
    goto too_deep;


   stack[sp].keylist = keylist;
   stack[sp].kix = kix;
   sp++;


   subtree = key;
   goto descend;
  }
 }



not_this_keyring:
 if (sp > 0) {

  sp--;
  keylist = stack[sp].keylist;
  kix = stack[sp].kix + 1;
  goto ascend;
 }

 ret = 0;

error:
 rcu_read_unlock();
 return ret;

too_deep:
 ret = -ELOOP;
 goto error;

cycle_detected:
 ret = -EDEADLK;
 goto error;
}
