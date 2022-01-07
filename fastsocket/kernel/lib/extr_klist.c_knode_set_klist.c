
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klist_node {struct klist* n_klist; } ;
struct klist {int dummy; } ;


 int WARN_ON (int ) ;
 int knode_dead (struct klist_node*) ;

__attribute__((used)) static void knode_set_klist(struct klist_node *knode, struct klist *klist)
{
 knode->n_klist = klist;

 WARN_ON(knode_dead(knode));
}
