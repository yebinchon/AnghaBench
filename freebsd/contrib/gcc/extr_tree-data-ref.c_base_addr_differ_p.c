
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct data_reference {int dummy; } ;


 scalar_t__ ADDR_EXPR ;
 scalar_t__ ARRAY_REF_TYPE ;
 scalar_t__ DR_BASE_ADDRESS (struct data_reference*) ;
 int DR_IS_READ (struct data_reference*) ;
 scalar_t__ DR_OFFSET (struct data_reference*) ;
 scalar_t__ DR_TYPE (struct data_reference*) ;
 scalar_t__ MULT_EXPR ;
 scalar_t__ POINTER_REF_TYPE ;
 scalar_t__ POINTER_TYPE_P (scalar_t__) ;
 int STRIP_NOPS (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_RESTRICT (scalar_t__) ;
 int base_object_differ_p (struct data_reference*,struct data_reference*,int*) ;
 int gcc_assert (int) ;
 scalar_t__ may_alias_p (scalar_t__,scalar_t__,struct data_reference*,struct data_reference*,int*) ;

__attribute__((used)) static bool
base_addr_differ_p (struct data_reference *dra,
      struct data_reference *drb,
      bool *differ_p)
{
  tree addr_a = DR_BASE_ADDRESS (dra);
  tree addr_b = DR_BASE_ADDRESS (drb);
  tree type_a, type_b;
  bool aliased;

  if (!addr_a || !addr_b)
    return 0;

  type_a = TREE_TYPE (addr_a);
  type_b = TREE_TYPE (addr_b);

  gcc_assert (POINTER_TYPE_P (type_a) && POINTER_TYPE_P (type_b));



  if (DR_TYPE (dra) == ARRAY_REF_TYPE && DR_TYPE (drb) == ARRAY_REF_TYPE)
    return base_object_differ_p (dra, drb, differ_p);







  if (DR_TYPE (dra) == POINTER_REF_TYPE && DR_TYPE (drb) == POINTER_REF_TYPE
      && (addr_a == addr_b
   || (TREE_CODE (addr_a) == ADDR_EXPR && TREE_CODE (addr_b) == ADDR_EXPR
       && TREE_OPERAND (addr_a, 0) == TREE_OPERAND (addr_b, 0))))
    {

      tree offset_a = DR_OFFSET (dra);
      tree offset_b = DR_OFFSET (drb);

      STRIP_NOPS (offset_a);
      STRIP_NOPS (offset_b);



      if (offset_a == offset_b
   || (TREE_CODE (offset_a) == MULT_EXPR
       && TREE_CODE (offset_b) == MULT_EXPR
       && TREE_OPERAND (offset_a, 0) == TREE_OPERAND (offset_b, 0)
       && TREE_OPERAND (offset_a, 1) == TREE_OPERAND (offset_b, 1)))
 {
   *differ_p = 0;
   return 1;
 }
    }





  if (may_alias_p (addr_a, addr_b, dra, drb, &aliased) && !aliased)
    {
      *differ_p = 1;
      return 1;
    }




  else if ((TYPE_RESTRICT (type_a) && !DR_IS_READ (dra))
      || (TYPE_RESTRICT (type_b) && !DR_IS_READ (drb)))
    {
      *differ_p = 1;
      return 1;
    }
  return 0;
}
