
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int LOOKUP_CONSTRUCTOR_CALLABLE ;
 int LOOKUP_NORMAL ;
 int LOOKUP_NO_CONVERSION ;
 int LOOKUP_ONLYCONVERTING ;
 int NULL_TREE ;
 int build_special_member_call (int ,int ,int ,int ,int) ;
 int build_tree_list (int ,int ) ;
 int complete_ctor_identifier ;

__attribute__((used)) static void
check_constructor_callable (tree type, tree expr)
{
  build_special_member_call (NULL_TREE,
        complete_ctor_identifier,
        build_tree_list (NULL_TREE, expr),
        type,
        LOOKUP_NORMAL | LOOKUP_ONLYCONVERTING
        | LOOKUP_NO_CONVERSION
        | LOOKUP_CONSTRUCTOR_CALLABLE);
}
