
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lock_class {int * key; int lock_entry; int hash_entry; } ;
struct TYPE_2__ {int entry; struct lock_class* class; } ;


 int list_del_rcu (int *) ;
 TYPE_1__* list_entries ;
 int nr_list_entries ;

__attribute__((used)) static void zap_class(struct lock_class *class)
{
 int i;





 for (i = 0; i < nr_list_entries; i++) {
  if (list_entries[i].class == class)
   list_del_rcu(&list_entries[i].entry);
 }



 list_del_rcu(&class->hash_entry);
 list_del_rcu(&class->lock_entry);

 class->key = ((void*)0);
}
