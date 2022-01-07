
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trie {int dummy; } ;
struct tnode {int dummy; } ;
struct node {int dummy; } ;


 int tnode_put_child_reorg (struct tnode*,int,struct node*,int) ;

__attribute__((used)) static inline void put_child(struct trie *t, struct tnode *tn, int i,
        struct node *n)
{
 tnode_put_child_reorg(tn, i, n, -1);
}
