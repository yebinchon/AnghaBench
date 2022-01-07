
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ DECL_SIZE (int ) ;
 scalar_t__ FIELD_DECL ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ integer_zerop (scalar_t__) ;

__attribute__((used)) static bool
zero_sized_field_decl (tree fdecl)
{
  if (TREE_CODE (fdecl) == FIELD_DECL && DECL_SIZE (fdecl)
      && integer_zerop (DECL_SIZE (fdecl)))
    return 1;
  return 0;
}
