
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_tree {int count; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline void get_tree(struct audit_tree *tree)
{
 atomic_inc(&tree->count);
}
