
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int CLASSTYPE_TI_TEMPLATE (int ) ;
 scalar_t__ CLASSTYPE_USE_TEMPLATE (int ) ;
 scalar_t__ DECL_ARTIFICIAL (int ) ;
 scalar_t__ DECL_NAME (int ) ;
 scalar_t__ PRIMARY_TEMPLATE_P (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TYPE_DECL ;
 scalar_t__ constructor_name (int ) ;

__attribute__((used)) static int
template_self_reference_p (tree type, tree decl)
{
  return (CLASSTYPE_USE_TEMPLATE (type)
    && PRIMARY_TEMPLATE_P (CLASSTYPE_TI_TEMPLATE (type))
    && TREE_CODE (decl) == TYPE_DECL
    && DECL_ARTIFICIAL (decl)
    && DECL_NAME (decl) == constructor_name (type));
}
