
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ DECL_ARTIFICIAL (scalar_t__) ;
 scalar_t__ DECL_C_BIT_FIELD (scalar_t__) ;
 int DECL_NAME (scalar_t__) ;
 scalar_t__ FIELD_DECL ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;

__attribute__((used)) static tree
next_initializable_field (tree field)
{
  while (field
  && (TREE_CODE (field) != FIELD_DECL
      || (DECL_C_BIT_FIELD (field) && !DECL_NAME (field))
      || DECL_ARTIFICIAL (field)))
    field = TREE_CHAIN (field);

  return field;
}
