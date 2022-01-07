
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_3__ {int (* incomplete_type_error ) (int ,scalar_t__) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;


 scalar_t__ INTEGER_CST ;
 int NULL_TREE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TYPE_MAIN_VARIANT (scalar_t__) ;
 scalar_t__ TYPE_SIZE_UNIT (scalar_t__) ;
 scalar_t__ error_mark_node ;
 scalar_t__ force_fit_type (scalar_t__,int ,int,int) ;
 scalar_t__ integer_zero_node ;
 TYPE_2__ lang_hooks ;
 scalar_t__ size_zero_node ;
 int stub1 (int ,scalar_t__) ;

tree
size_in_bytes (tree type)
{
  tree t;

  if (type == error_mark_node)
    return integer_zero_node;

  type = TYPE_MAIN_VARIANT (type);
  t = TYPE_SIZE_UNIT (type);

  if (t == 0)
    {
      lang_hooks.types.incomplete_type_error (NULL_TREE, type);
      return size_zero_node;
    }

  if (TREE_CODE (t) == INTEGER_CST)
    t = force_fit_type (t, 0, 0, 0);

  return t;
}
