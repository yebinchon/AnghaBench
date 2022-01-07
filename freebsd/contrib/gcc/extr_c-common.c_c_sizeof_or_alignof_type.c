
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int BITS_PER_UNIT ;
 int CEIL_DIV_EXPR ;
 int COMPLETE_TYPE_P (char*) ;
 int ERROR_MARK ;
 int FUNCTION_BOUNDARY ;
 int FUNCTION_TYPE ;
 int TREE_CODE (char*) ;
 int TREE_TYPE (char*) ;
 int TYPE_ALIGN_UNIT (char*) ;
 int TYPE_IS_SIZETYPE (int ) ;
 int TYPE_PRECISION (int ) ;
 int TYPE_SIZE_UNIT (char*) ;
 int VOID_TYPE ;
 int char_type_node ;
 int error (char*,char const*,char*) ;
 char* fold_convert (int ,char*) ;
 int gcc_assert (int) ;
 scalar_t__ pedantic ;
 int pedwarn (char*,...) ;
 char* size_binop (int ,int ,char*) ;
 char* size_int (int) ;
 char* size_one_node ;
 int size_type_node ;
 char* size_zero_node ;
 scalar_t__ warn_pointer_arith ;

tree
c_sizeof_or_alignof_type (tree type, bool is_sizeof, int complain)
{
  const char *op_name;
  tree value = ((void*)0);
  enum tree_code type_code = TREE_CODE (type);

  op_name = is_sizeof ? "sizeof" : "__alignof__";

  if (type_code == FUNCTION_TYPE)
    {
      if (is_sizeof)
 {
   if (complain && (pedantic || warn_pointer_arith))
     pedwarn ("invalid application of %<sizeof%> to a function type");
   value = size_one_node;
 }
      else
 value = size_int (FUNCTION_BOUNDARY / BITS_PER_UNIT);
    }
  else if (type_code == VOID_TYPE || type_code == ERROR_MARK)
    {
      if (type_code == VOID_TYPE
   && complain && (pedantic || warn_pointer_arith))
 pedwarn ("invalid application of %qs to a void type", op_name);
      value = size_one_node;
    }
  else if (!COMPLETE_TYPE_P (type))
    {
      if (complain)
 error ("invalid application of %qs to incomplete type %qT ",
        op_name, type);
      value = size_zero_node;
    }
  else
    {
      if (is_sizeof)

 value = size_binop (CEIL_DIV_EXPR, TYPE_SIZE_UNIT (type),
       size_int (TYPE_PRECISION (char_type_node)
          / BITS_PER_UNIT));
      else
 value = size_int (TYPE_ALIGN_UNIT (type));
    }





  value = fold_convert (size_type_node, value);
  gcc_assert (!TYPE_IS_SIZETYPE (TREE_TYPE (value)));

  return value;
}
