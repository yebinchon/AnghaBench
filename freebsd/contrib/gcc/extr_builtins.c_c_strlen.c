
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int HOST_WIDE_INT ;


 scalar_t__ COMPOUND_EXPR ;
 scalar_t__ COND_EXPR ;
 scalar_t__ INTEGER_CST ;
 int STRIP_NOPS (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int TREE_SIDE_EFFECTS (scalar_t__) ;
 int TREE_STRING_LENGTH (scalar_t__) ;
 char* TREE_STRING_POINTER (scalar_t__) ;
 int host_integerp (scalar_t__,int ) ;
 scalar_t__ size_diffop (int ,scalar_t__) ;
 int size_int (int) ;
 scalar_t__ ssize_int (int ) ;
 scalar_t__ string_constant (scalar_t__,scalar_t__*) ;
 int strlen (char const*) ;
 scalar_t__ tree_int_cst_equal (scalar_t__,scalar_t__) ;
 int tree_low_cst (scalar_t__,int ) ;
 int warning (int ,char*) ;

tree
c_strlen (tree src, int only_value)
{
  tree offset_node;
  HOST_WIDE_INT offset;
  int max;
  const char *ptr;

  STRIP_NOPS (src);
  if (TREE_CODE (src) == COND_EXPR
      && (only_value || !TREE_SIDE_EFFECTS (TREE_OPERAND (src, 0))))
    {
      tree len1, len2;

      len1 = c_strlen (TREE_OPERAND (src, 1), only_value);
      len2 = c_strlen (TREE_OPERAND (src, 2), only_value);
      if (tree_int_cst_equal (len1, len2))
 return len1;
    }

  if (TREE_CODE (src) == COMPOUND_EXPR
      && (only_value || !TREE_SIDE_EFFECTS (TREE_OPERAND (src, 0))))
    return c_strlen (TREE_OPERAND (src, 1), only_value);

  src = string_constant (src, &offset_node);
  if (src == 0)
    return 0;

  max = TREE_STRING_LENGTH (src) - 1;
  ptr = TREE_STRING_POINTER (src);

  if (offset_node && TREE_CODE (offset_node) != INTEGER_CST)
    {



      int i;

      for (i = 0; i < max; i++)
 if (ptr[i] == 0)
   return 0;
      return size_diffop (size_int (max), offset_node);
    }



  if (offset_node == 0)
    offset = 0;
  else if (! host_integerp (offset_node, 0))
    offset = -1;
  else
    offset = tree_low_cst (offset_node, 0);



  if (offset < 0 || offset > max)
    {
      warning (0, "offset outside bounds of constant string");
      return 0;
    }







  return ssize_int (strlen (ptr + offset));
}
