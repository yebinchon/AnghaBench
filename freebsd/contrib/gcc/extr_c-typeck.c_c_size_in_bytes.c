
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int BITS_PER_UNIT ;
 int CEIL_DIV_EXPR ;
 int COMPLETE_OR_VOID_TYPE_P (int ) ;
 int ERROR_MARK ;
 int FUNCTION_TYPE ;
 int TREE_CODE (int ) ;
 int TYPE_PRECISION (int ) ;
 int TYPE_SIZE_UNIT (int ) ;
 int VOID_TYPE ;
 int char_type_node ;
 int error (char*) ;
 int size_binop (int ,int ,int ) ;
 int size_int (int) ;
 int size_one_node ;

__attribute__((used)) static tree
c_size_in_bytes (tree type)
{
  enum tree_code code = TREE_CODE (type);

  if (code == FUNCTION_TYPE || code == VOID_TYPE || code == ERROR_MARK)
    return size_one_node;

  if (!COMPLETE_OR_VOID_TYPE_P (type))
    {
      error ("arithmetic on pointer to an incomplete type");
      return size_one_node;
    }


  return size_binop (CEIL_DIV_EXPR, TYPE_SIZE_UNIT (type),
       size_int (TYPE_PRECISION (char_type_node)
          / BITS_PER_UNIT));
}
