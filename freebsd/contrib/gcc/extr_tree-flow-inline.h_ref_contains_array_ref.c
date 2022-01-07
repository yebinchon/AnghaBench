
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ ARRAY_REF ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;
 int gcc_assert (scalar_t__) ;
 scalar_t__ handled_component_p (int ) ;

__attribute__((used)) static inline bool
ref_contains_array_ref (tree ref)
{
  gcc_assert (handled_component_p (ref));

  do {
    if (TREE_CODE (ref) == ARRAY_REF)
      return 1;
    ref = TREE_OPERAND (ref, 0);
  } while (handled_component_p (ref));

  return 0;
}
