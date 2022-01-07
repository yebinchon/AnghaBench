
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlbl_af4list {int dummy; } ;
struct list_head {int dummy; } ;
typedef int __be32 ;


 int netlbl_af4list_remove_entry (struct netlbl_af4list*) ;
 struct netlbl_af4list* netlbl_af4list_search_exact (int ,int ,struct list_head*) ;

struct netlbl_af4list *netlbl_af4list_remove(__be32 addr, __be32 mask,
          struct list_head *head)
{
 struct netlbl_af4list *entry;

 entry = netlbl_af4list_search_exact(addr, mask, head);
 if (entry == ((void*)0))
  return ((void*)0);
 netlbl_af4list_remove_entry(entry);
 return entry;
}
