
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * tree ;
typedef TYPE_1__* splay_tree_node ;
struct TYPE_3__ {int value; } ;


 int reference_vars_to_consider ;
 TYPE_1__* splay_tree_lookup (int ,int) ;

__attribute__((used)) static tree
get_static_decl (int index)
{
  splay_tree_node stn =
    splay_tree_lookup (reference_vars_to_consider, index);
  if (stn)
    return (tree)stn->value;
  return ((void*)0);
}
