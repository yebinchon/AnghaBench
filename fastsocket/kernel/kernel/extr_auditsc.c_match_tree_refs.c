
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_tree_refs {int * c; struct audit_tree_refs* next; } ;
struct audit_tree {int dummy; } ;
struct audit_context {int tree_count; struct audit_tree_refs* trees; struct audit_tree_refs* first_trees; } ;


 scalar_t__ audit_tree_match (int ,struct audit_tree*) ;

__attribute__((used)) static int match_tree_refs(struct audit_context *ctx, struct audit_tree *tree)
{
 return 0;
}
