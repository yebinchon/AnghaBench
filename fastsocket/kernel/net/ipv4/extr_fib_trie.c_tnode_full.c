
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnode {scalar_t__ pos; scalar_t__ bits; } ;
struct node {int dummy; } ;


 scalar_t__ IS_LEAF (struct node const*) ;

__attribute__((used)) static inline int tnode_full(const struct tnode *tn, const struct node *n)
{
 if (n == ((void*)0) || IS_LEAF(n))
  return 0;

 return ((struct tnode *) n)->pos == tn->pos + tn->bits;
}
