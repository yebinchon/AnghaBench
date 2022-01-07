
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct tree_type {int dummy; } ;
struct TYPE_3__ {int hash_types; } ;
struct TYPE_4__ {TYPE_1__ types; } ;


 scalar_t__ TYPE_MAIN_VARIANT (scalar_t__) ;
 int gcc_assert (int) ;
 TYPE_2__ lang_hooks ;
 scalar_t__ t_kind ;
 int * tree_node_counts ;
 int* tree_node_sizes ;
 int type_hash_add (unsigned int,scalar_t__) ;
 scalar_t__ type_hash_lookup (unsigned int,scalar_t__) ;

tree
type_hash_canon (unsigned int hashcode, tree type)
{
  tree t1;



  gcc_assert (TYPE_MAIN_VARIANT (type) == type);

  if (!lang_hooks.types.hash_types)
    return type;



  t1 = type_hash_lookup (hashcode, type);
  if (t1 != 0)
    {




      return t1;
    }
  else
    {
      type_hash_add (hashcode, type);
      return type;
    }
}
