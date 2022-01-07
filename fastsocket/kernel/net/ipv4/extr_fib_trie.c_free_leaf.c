
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct leaf {int rcu; } ;


 int __leaf_free_rcu ;
 int call_rcu_bh (int *,int ) ;

__attribute__((used)) static inline void free_leaf(struct leaf *l)
{
 call_rcu_bh(&l->rcu, __leaf_free_rcu);
}
