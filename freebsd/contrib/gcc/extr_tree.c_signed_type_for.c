
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct TYPE_3__ {int (* signed_type ) (int ) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;


 scalar_t__ POINTER_TYPE_P (int ) ;
 TYPE_2__ lang_hooks ;
 int size_type_node ;
 int stub1 (int ) ;
 int stub2 (int ) ;

tree
signed_type_for (tree type)
{
  if (POINTER_TYPE_P (type))
    return lang_hooks.types.signed_type (size_type_node);
  return lang_hooks.types.signed_type (type);
}
