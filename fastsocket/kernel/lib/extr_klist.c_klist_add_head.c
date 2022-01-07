
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klist_node {int dummy; } ;
struct klist {int dummy; } ;


 int add_head (struct klist*,struct klist_node*) ;
 int klist_node_init (struct klist*,struct klist_node*) ;

void klist_add_head(struct klist_node *n, struct klist *k)
{
 klist_node_init(k, n);
 add_head(k, n);
}
