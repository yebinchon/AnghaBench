
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llist_node {struct llist_node* next; } ;
struct llist_head {struct llist_node* first; } ;


 struct llist_node* cmpxchg (struct llist_node**,struct llist_node*,struct llist_node*) ;

struct llist_node *llist_del_first(struct llist_head *head)
{
 struct llist_node *entry, *old_entry, *next;

 entry = head->first;
 for (;;) {
  if (entry == ((void*)0))
   return ((void*)0);
  old_entry = entry;
  next = entry->next;
  entry = cmpxchg(&head->first, old_entry, next);
  if (entry == old_entry)
   break;
 }

 return entry;
}
