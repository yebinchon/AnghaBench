
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* splay_tree_node ;
struct TYPE_5__ {char const* (* decl_printable_name ) (int ,int) ;} ;
struct TYPE_4__ {scalar_t__ value; } ;


 TYPE_3__ lang_hooks ;
 int reference_vars_to_consider ;
 TYPE_1__* splay_tree_lookup (int ,int) ;
 char const* stub1 (int ,int) ;

__attribute__((used)) static const char *
get_static_name (int index)
{
  splay_tree_node stn =
    splay_tree_lookup (reference_vars_to_consider, index);
  if (stn)
    return lang_hooks.decl_printable_name ((tree)(stn->value), 2);
  return ((void*)0);
}
