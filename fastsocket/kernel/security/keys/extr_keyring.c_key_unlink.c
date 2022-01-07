
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct keyring_list {int nkeys; int maxkeys; int delkey; int rcu; struct key** keys; } ;
struct TYPE_2__ {int subscriptions; } ;
struct key {int sem; TYPE_1__ payload; scalar_t__ datalen; int * type; } ;


 int ENOENT ;
 int ENOMEM ;
 int ENOTDIR ;
 int GFP_KERNEL ;
 scalar_t__ KEYQUOTA_LINK_BYTES ;
 int call_rcu (int *,int ) ;
 int down_write (int *) ;
 int key_check (struct key*) ;
 int key_payload_reserve (struct key*,scalar_t__) ;
 int key_type_keyring ;
 int keyring_unlink_rcu_disposal ;
 struct keyring_list* kmalloc (int,int ) ;
 int memcpy (struct key**,struct key**,int) ;
 int rcu_assign_pointer (int ,struct keyring_list*) ;
 struct keyring_list* rcu_dereference_locked_keyring (struct key*) ;
 int up_write (int *) ;

int key_unlink(struct key *keyring, struct key *key)
{
 struct keyring_list *klist, *nklist;
 int loop, ret;

 key_check(keyring);
 key_check(key);

 ret = -ENOTDIR;
 if (keyring->type != &key_type_keyring)
  goto error;

 down_write(&keyring->sem);

 klist = rcu_dereference_locked_keyring(keyring);
 if (klist) {

  for (loop = 0; loop < klist->nkeys; loop++)
   if (klist->keys[loop] == key)
    goto key_is_present;
 }

 up_write(&keyring->sem);
 ret = -ENOENT;
 goto error;

key_is_present:

 nklist = kmalloc(sizeof(*klist) +
    sizeof(struct key *) * klist->maxkeys,
    GFP_KERNEL);
 if (!nklist)
  goto nomem;
 nklist->maxkeys = klist->maxkeys;
 nklist->nkeys = klist->nkeys - 1;

 if (loop > 0)
  memcpy(&nklist->keys[0],
         &klist->keys[0],
         loop * sizeof(struct key *));

 if (loop < nklist->nkeys)
  memcpy(&nklist->keys[loop],
         &klist->keys[loop + 1],
         (nklist->nkeys - loop) * sizeof(struct key *));


 key_payload_reserve(keyring,
       keyring->datalen - KEYQUOTA_LINK_BYTES);

 rcu_assign_pointer(keyring->payload.subscriptions, nklist);

 up_write(&keyring->sem);


 klist->delkey = loop;
 call_rcu(&klist->rcu, keyring_unlink_rcu_disposal);

 ret = 0;

error:
 return ret;
nomem:
 ret = -ENOMEM;
 up_write(&keyring->sem);
 goto error;
}
