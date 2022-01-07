
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_tree_refs {int ** c; struct audit_tree_refs* next; } ;
struct audit_context {int tree_count; struct audit_tree_refs* trees; struct audit_tree_refs* first_trees; } ;


 int audit_put_chunk (int *) ;

__attribute__((used)) static void unroll_tree_refs(struct audit_context *ctx,
        struct audit_tree_refs *p, int count)
{
}
