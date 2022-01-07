
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnode {int rcu; } ;
struct leaf {int dummy; } ;


 scalar_t__ IS_LEAF (struct tnode*) ;
 int __tnode_free_rcu ;
 int call_rcu (int *,int ) ;
 int free_leaf (struct leaf*) ;

__attribute__((used)) static inline void tnode_free(struct tnode *tn)
{
 if (IS_LEAF(tn))
  free_leaf((struct leaf *) tn);
 else
  call_rcu(&tn->rcu, __tnode_free_rcu);
}
