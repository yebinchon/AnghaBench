
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ DECL_CONSTRUCTOR_P (int ) ;
 scalar_t__ DECL_DESTRUCTOR_P (int ) ;
 scalar_t__ DECL_FUNCTION_TEMPLATE_P (int ) ;
 int DECL_NAME (int ) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ TREE_CODE (int ) ;
 int ctor_identifier ;
 int dtor_identifier ;
 int gcc_assert (int) ;
 int lookup_fnfields_1 (int ,int ) ;

int
class_method_index_for_fn (tree class_type, tree function)
{
  gcc_assert (TREE_CODE (function) == FUNCTION_DECL
       || DECL_FUNCTION_TEMPLATE_P (function));

  return lookup_fnfields_1 (class_type,
       DECL_CONSTRUCTOR_P (function) ? ctor_identifier :
       DECL_DESTRUCTOR_P (function) ? dtor_identifier :
       DECL_NAME (function));
}
