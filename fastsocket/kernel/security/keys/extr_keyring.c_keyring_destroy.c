
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct keyring_list {int nkeys; int * keys; } ;
struct TYPE_5__ {int subscriptions; } ;
struct TYPE_7__ {int * next; } ;
struct TYPE_6__ {TYPE_3__ link; } ;
struct key {TYPE_1__ payload; TYPE_2__ type_data; scalar_t__ description; } ;


 int key_put (int ) ;
 int keyring_name_lock ;
 int kfree (struct keyring_list*) ;
 int list_del (TYPE_3__*) ;
 int list_empty (TYPE_3__*) ;
 struct keyring_list* rcu_dereference (int ) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static void keyring_destroy(struct key *keyring)
{
 struct keyring_list *klist;
 int loop;

 if (keyring->description) {
  write_lock(&keyring_name_lock);

  if (keyring->type_data.link.next != ((void*)0) &&
      !list_empty(&keyring->type_data.link))
   list_del(&keyring->type_data.link);

  write_unlock(&keyring_name_lock);
 }

 klist = rcu_dereference(keyring->payload.subscriptions);
 if (klist) {
  for (loop = klist->nkeys - 1; loop >= 0; loop--)
   key_put(klist->keys[loop]);
  kfree(klist);
 }
}
