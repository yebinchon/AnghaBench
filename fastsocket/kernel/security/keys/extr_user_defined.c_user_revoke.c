
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_key_payload {int rcu; } ;
struct TYPE_2__ {struct user_key_payload* data; } ;
struct key {TYPE_1__ payload; } ;


 int call_rcu (int *,int ) ;
 int key_payload_reserve (struct key*,int ) ;
 int rcu_assign_keypointer (struct key*,int *) ;
 int user_update_rcu_disposal ;

void user_revoke(struct key *key)
{
 struct user_key_payload *upayload = key->payload.data;


 key_payload_reserve(key, 0);

 if (upayload) {
  rcu_assign_keypointer(key, ((void*)0));
  call_rcu(&upayload->rcu, user_update_rcu_disposal);
 }
}
