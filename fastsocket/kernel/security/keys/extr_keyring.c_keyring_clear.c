
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct keyring_list {int rcu; } ;
struct TYPE_2__ {int subscriptions; } ;
struct key {int sem; TYPE_1__ payload; int * type; } ;


 int ENOTDIR ;
 int call_rcu (int *,int ) ;
 int down_write (int *) ;
 int key_payload_reserve (struct key*,int) ;
 int key_type_keyring ;
 int keyring_clear_rcu_disposal ;
 int rcu_assign_pointer (int ,int *) ;
 struct keyring_list* rcu_dereference_locked_keyring (struct key*) ;
 int up_write (int *) ;

int keyring_clear(struct key *keyring)
{
 struct keyring_list *klist;
 int ret;

 ret = -ENOTDIR;
 if (keyring->type == &key_type_keyring) {

  down_write(&keyring->sem);

  klist = rcu_dereference_locked_keyring(keyring);
  if (klist) {

   key_payload_reserve(keyring,
         sizeof(struct keyring_list));

   rcu_assign_pointer(keyring->payload.subscriptions,
        ((void*)0));
  }

  up_write(&keyring->sem);


  if (klist)
   call_rcu(&klist->rcu, keyring_clear_rcu_disposal);

  ret = 0;
 }

 return ret;
}
