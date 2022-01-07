
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int node_list; int prio_list; } ;
struct plist_node {TYPE_1__ plist; } ;
struct plist_head {int dummy; } ;


 int list_del_init (int *) ;
 int list_empty (int *) ;
 int list_move_tail (int *,int *) ;
 int plist_check_head (struct plist_head*) ;
 struct plist_node* plist_first (TYPE_1__*) ;

void plist_del(struct plist_node *node, struct plist_head *head)
{
 plist_check_head(head);

 if (!list_empty(&node->plist.prio_list)) {
  struct plist_node *next = plist_first(&node->plist);

  list_move_tail(&next->plist.prio_list, &node->plist.prio_list);
  list_del_init(&node->plist.prio_list);
 }

 list_del_init(&node->plist.node_list);

 plist_check_head(head);
}
