
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnode {int dummy; } ;
struct node {unsigned long parent; } ;


 unsigned long NODE_TYPE (struct node*) ;
 int smp_wmb () ;

__attribute__((used)) static inline void node_set_parent(struct node *node, struct tnode *ptr)
{
 smp_wmb();
 node->parent = (unsigned long)ptr | NODE_TYPE(node);
}
