
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlbl_af4list {int list; scalar_t__ valid; } ;


 int list_del_rcu (int *) ;

void netlbl_af4list_remove_entry(struct netlbl_af4list *entry)
{
 entry->valid = 0;
 list_del_rcu(&entry->list);
}
