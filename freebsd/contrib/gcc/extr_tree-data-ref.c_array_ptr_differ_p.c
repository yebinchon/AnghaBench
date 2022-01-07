
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct data_reference {int dummy; } ;


 scalar_t__ INDIRECT_REF ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;
 scalar_t__ VAR_DECL ;
 scalar_t__ ptr_decl_may_alias_p (int ,int ,struct data_reference*,int*) ;

__attribute__((used)) static bool
array_ptr_differ_p (tree base_a, tree base_b,
      struct data_reference *drb)
{
  bool aliased;



  if (TREE_CODE (base_a) == VAR_DECL && TREE_CODE (base_b) == INDIRECT_REF
      && (ptr_decl_may_alias_p (TREE_OPERAND (base_b, 0), base_a, drb, &aliased)
   && !aliased))
    return 1;
  else
    return 0;
}
