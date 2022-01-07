
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct data_reference {int dummy; } ;


 scalar_t__ COMPONENT_REF ;
 scalar_t__ DR_BASE_OBJECT (struct data_reference*) ;
 scalar_t__ INDIRECT_REF ;
 scalar_t__ RECORD_TYPE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ VAR_DECL ;
 scalar_t__ array_ptr_differ_p (scalar_t__,scalar_t__,struct data_reference*) ;
 scalar_t__ may_alias_p (scalar_t__,scalar_t__,struct data_reference*,struct data_reference*,int*) ;
 scalar_t__ record_array_differ_p (struct data_reference*,struct data_reference*) ;
 scalar_t__ record_ptr_differ_p (struct data_reference*,struct data_reference*) ;
 scalar_t__ record_record_differ_p (struct data_reference*,struct data_reference*) ;

__attribute__((used)) static bool
base_object_differ_p (struct data_reference *a,
        struct data_reference *b,
        bool *differ_p)
{
  tree base_a = DR_BASE_OBJECT (a);
  tree base_b = DR_BASE_OBJECT (b);
  bool aliased;

  if (!base_a || !base_b)
    return 0;



  if (base_a == base_b)
    {
      *differ_p = 0;
      return 1;
    }



  if (TREE_CODE (base_a) == INDIRECT_REF && TREE_CODE (base_b) == INDIRECT_REF
      && TREE_OPERAND (base_a, 0) == TREE_OPERAND (base_b, 0))
    {
      *differ_p = 0;
      return 1;
    }


  if (TREE_CODE (base_a) == COMPONENT_REF && TREE_CODE (base_b) == COMPONENT_REF
      && TREE_OPERAND (base_a, 0) == TREE_OPERAND (base_b, 0)
      && TREE_OPERAND (base_a, 1) == TREE_OPERAND (base_b, 1))
    {
      *differ_p = 0;
      return 1;
    }
  if (TREE_CODE (base_a) == VAR_DECL && TREE_CODE (base_b) == VAR_DECL)
    {
      *differ_p = 1;
      return 1;
    }



  if (array_ptr_differ_p (base_a, base_b, b)
      || array_ptr_differ_p (base_b, base_a, a))
    {
      *differ_p = 1;
      return 1;
    }



  if (TREE_CODE (base_a) == INDIRECT_REF && TREE_CODE (base_b) == INDIRECT_REF
      && (may_alias_p (TREE_OPERAND (base_a, 0), TREE_OPERAND (base_b, 0), a, b,
         &aliased)
   && !aliased))
    {
      *differ_p = 1;
      return 1;
    }



  if (TREE_CODE (base_a) == COMPONENT_REF && TREE_CODE (base_b) == COMPONENT_REF
      && ((TREE_CODE (TREE_OPERAND (base_a, 0)) == VAR_DECL
           && TREE_CODE (TREE_OPERAND (base_b, 0)) == VAR_DECL
           && TREE_OPERAND (base_a, 0) != TREE_OPERAND (base_b, 0))
          || (TREE_CODE (TREE_TYPE (TREE_OPERAND (base_a, 0))) == RECORD_TYPE
              && TREE_CODE (TREE_TYPE (TREE_OPERAND (base_b, 0))) == RECORD_TYPE
              && TREE_OPERAND (base_a, 1) != TREE_OPERAND (base_b, 1))))
    {
      *differ_p = 1;
      return 1;
    }



  if (record_ptr_differ_p (a, b) || record_ptr_differ_p (b, a))
    {
      *differ_p = 1;
      return 1;
    }




  if (record_array_differ_p (a, b) || record_array_differ_p (b, a))
    {
      *differ_p = 1;
      return 1;
    }


  if (record_record_differ_p (a, b))
    {
      *differ_p = 1;
      return 1;
    }

  return 0;
}
