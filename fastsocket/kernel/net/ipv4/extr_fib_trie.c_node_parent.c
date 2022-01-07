
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnode {int dummy; } ;
struct node {int parent; } ;


 int NODE_TYPE_MASK ;

__attribute__((used)) static inline struct tnode *node_parent(struct node *node)
{
 return (struct tnode *)(node->parent & ~NODE_TYPE_MASK);
}
