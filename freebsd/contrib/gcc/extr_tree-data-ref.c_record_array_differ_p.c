
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct data_reference {int dummy; } ;


 scalar_t__ COMPONENT_REF ;
 int DR_BASE_OBJECT (struct data_reference*) ;
 scalar_t__ INDIRECT_REF ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;
 scalar_t__ VAR_DECL ;
 scalar_t__ ptr_decl_may_alias_p (int ,int ,struct data_reference*,int*) ;

__attribute__((used)) static bool
record_array_differ_p (struct data_reference *dra,
         struct data_reference *drb)
{
  bool aliased;
  tree base_a = DR_BASE_OBJECT (dra);
  tree base_b = DR_BASE_OBJECT (drb);

  if (TREE_CODE (base_b) != COMPONENT_REF)
    return 0;




  while (TREE_CODE (base_b) == COMPONENT_REF)
     base_b = TREE_OPERAND (base_b, 0);




  if (TREE_CODE (base_a) == VAR_DECL
      && (TREE_CODE (base_b) == VAR_DECL
   || (TREE_CODE (base_b) == INDIRECT_REF
       && (ptr_decl_may_alias_p (TREE_OPERAND (base_b, 0), base_a, drb,
     &aliased)
    && !aliased))))
    return 1;
  else
    return 0;
}
