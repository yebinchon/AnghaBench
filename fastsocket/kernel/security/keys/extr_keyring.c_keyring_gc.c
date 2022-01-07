
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct keyring_list {int nkeys; int maxkeys; int rcu; struct key** keys; scalar_t__ delkey; } ;
struct TYPE_2__ {int subscriptions; } ;
struct key {int sem; TYPE_1__ payload; int description; } ;


 int GFP_KERNEL ;
 int KEYQUOTA_LINK_BYTES ;
 int call_rcu (int *,int (*) (int *)) ;
 int down_write (int *) ;
 int kenter (char*,int ,int ) ;
 struct key* key_get (struct key*) ;
 int key_is_dead (struct key*,int ) ;
 int key_payload_reserve (struct key*,int) ;
 int key_serial (struct key*) ;
 int keyring_clear_rcu_disposal (int *) ;
 int kfree (struct keyring_list*) ;
 int kleave (char*) ;
 struct keyring_list* kmalloc (int,int ) ;
 int rcu_assign_pointer (int ,struct keyring_list*) ;
 struct keyring_list* rcu_dereference_locked_keyring (struct key*) ;
 int roundup (int,int) ;
 int up_write (int *) ;

void keyring_gc(struct key *keyring, time_t limit)
{
 struct keyring_list *klist, *new;
 struct key *key;
 int loop, keep, max;

 kenter("{%x,%s}", key_serial(keyring), keyring->description);

 down_write(&keyring->sem);

 klist = rcu_dereference_locked_keyring(keyring);
 if (!klist)
  goto no_klist;


 keep = 0;
 for (loop = klist->nkeys - 1; loop >= 0; loop--)
  if (!key_is_dead(klist->keys[loop], limit))
   keep++;

 if (keep == klist->nkeys)
  goto just_return;


 max = roundup(keep, 4);
 new = kmalloc(sizeof(struct keyring_list) + max * sizeof(struct key *),
        GFP_KERNEL);
 if (!new)
  goto nomem;
 new->maxkeys = max;
 new->nkeys = 0;
 new->delkey = 0;




 keep = 0;
 for (loop = klist->nkeys - 1; loop >= 0; loop--) {
  key = klist->keys[loop];
  if (!key_is_dead(key, limit)) {
   if (keep >= max)
    goto discard_new;
   new->keys[keep++] = key_get(key);
  }
 }
 new->nkeys = keep;


 key_payload_reserve(keyring,
       sizeof(struct keyring_list) +
       KEYQUOTA_LINK_BYTES * keep);

 if (keep == 0) {
  rcu_assign_pointer(keyring->payload.subscriptions, ((void*)0));
  kfree(new);
 } else {
  rcu_assign_pointer(keyring->payload.subscriptions, new);
 }

 up_write(&keyring->sem);

 call_rcu(&klist->rcu, keyring_clear_rcu_disposal);
 kleave(" [yes]");
 return;

discard_new:
 new->nkeys = keep;
 keyring_clear_rcu_disposal(&new->rcu);
 up_write(&keyring->sem);
 kleave(" [discard]");
 return;

just_return:
 up_write(&keyring->sem);
 kleave(" [no dead]");
 return;

no_klist:
 up_write(&keyring->sem);
 kleave(" [no_klist]");
 return;

nomem:
 up_write(&keyring->sem);
 kleave(" [oom]");
}
