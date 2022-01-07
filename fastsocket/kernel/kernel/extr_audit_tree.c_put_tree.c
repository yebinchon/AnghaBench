
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_tree {int head; int count; } ;


 int __put_tree ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int call_rcu (int *,int ) ;

__attribute__((used)) static inline void put_tree(struct audit_tree *tree)
{
 if (atomic_dec_and_test(&tree->count))
  call_rcu(&tree->head, __put_tree);
}
