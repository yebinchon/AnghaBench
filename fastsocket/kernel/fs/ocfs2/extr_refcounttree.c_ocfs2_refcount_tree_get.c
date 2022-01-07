
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_refcount_tree {int rf_getcnt; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline void
ocfs2_refcount_tree_get(struct ocfs2_refcount_tree *tree)
{
 kref_get(&tree->rf_getcnt);
}
