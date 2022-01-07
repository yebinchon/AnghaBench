
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct keyring_list {int rcu; } ;
struct TYPE_2__ {int subscriptions; } ;
struct key {TYPE_1__ payload; } ;


 int call_rcu (int *,int ) ;
 int key_payload_reserve (struct key*,int ) ;
 int keyring_clear_rcu_disposal ;
 int rcu_assign_pointer (int ,int *) ;
 struct keyring_list* rcu_dereference_locked_keyring (struct key*) ;

__attribute__((used)) static void keyring_revoke(struct key *keyring)
{
 struct keyring_list *klist;

 klist = rcu_dereference_locked_keyring(keyring);


 key_payload_reserve(keyring, 0);

 if (klist) {
  rcu_assign_pointer(keyring->payload.subscriptions, ((void*)0));
  call_rcu(&klist->rcu, keyring_clear_rcu_disposal);
 }
}
