
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct TYPE_3__ {int value; } ;
typedef TYPE_1__ cxx_binding ;


 int NULL_TREE ;
 TYPE_1__* outer_binding (int ,int *,int) ;

tree
innermost_non_namespace_value (tree name)
{
  cxx_binding *binding;
  binding = outer_binding (name, ((void*)0), 1);
  return binding ? binding->value : NULL_TREE;
}
