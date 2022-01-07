
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llist_node {struct llist_node* next; } ;
struct llist_head {struct llist_node* first; } ;


 struct llist_node* cmpxchg (struct llist_node**,struct llist_node*,struct llist_node*) ;

bool llist_add_batch(struct llist_node *new_first, struct llist_node *new_last,
       struct llist_head *head)
{
 struct llist_node *entry, *old_entry;

 entry = head->first;
 for (;;) {
  old_entry = entry;
  new_last->next = entry;
  entry = cmpxchg(&head->first, old_entry, new_first);
  if (entry == old_entry)
   break;
 }

 return old_entry == ((void*)0);
}
