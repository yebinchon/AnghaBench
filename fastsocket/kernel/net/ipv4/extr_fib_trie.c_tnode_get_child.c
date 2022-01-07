
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnode {int bits; struct node** child; } ;
struct node {int dummy; } ;


 int BUG_ON (int) ;

__attribute__((used)) static inline struct node *tnode_get_child(struct tnode *tn, unsigned int i)
{
 BUG_ON(i >= 1U << tn->bits);

 return tn->child[i];
}
