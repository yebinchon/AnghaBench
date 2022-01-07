
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ ARRAY_REF ;
 scalar_t__ INDIRECT_REF ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;
 int gcc_assert (int) ;
 scalar_t__ handled_component_p (int ) ;

__attribute__((used)) static inline bool
array_ref_contains_indirect_ref (tree ref)
{
  gcc_assert (TREE_CODE (ref) == ARRAY_REF);

  do {
    ref = TREE_OPERAND (ref, 0);
  } while (handled_component_p (ref));

  return TREE_CODE (ref) == INDIRECT_REF;
}
