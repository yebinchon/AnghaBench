
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_offload {int list; } ;
struct list_head {int dummy; } ;


 int list_add_rcu (int *,struct list_head*) ;
 struct list_head offload_base ;
 int offload_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void dev_add_offload(struct packet_offload *po)
{
 struct list_head *head = &offload_base;

 spin_lock(&offload_lock);
 list_add_rcu(&po->list, head);
 spin_unlock(&offload_lock);
}
