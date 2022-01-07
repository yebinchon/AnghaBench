
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int bitmap ;


 int INTEGER_CST ;

 scalar_t__ PHI_ARG_DEF (scalar_t__,int) ;

 int PHI_NUM_ARGS (scalar_t__) ;
 scalar_t__ PHI_RESULT (scalar_t__) ;
 int SSA_NAME ;
 scalar_t__ SSA_NAME_DEF_STMT (scalar_t__) ;
 int SSA_NAME_VERSION (scalar_t__) ;
 int STRIP_NOPS (scalar_t__) ;
 int TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ bitmap_bit_p (int ,int ) ;
 int bitmap_set_bit (int ,int ) ;
 scalar_t__ c_strlen (scalar_t__,int) ;
 int simple_cst_equal (scalar_t__,scalar_t__) ;
 scalar_t__ tree_int_cst_lt (scalar_t__,scalar_t__) ;
 scalar_t__ tree_int_cst_sgn (scalar_t__) ;

__attribute__((used)) static bool
get_maxval_strlen (tree arg, tree *length, bitmap visited, int type)
{
  tree var, def_stmt, val;

  if (TREE_CODE (arg) != SSA_NAME)
    {
      if (type == 2)
 {
   val = arg;
   if (TREE_CODE (val) != INTEGER_CST
       || tree_int_cst_sgn (val) < 0)
     return 0;
 }
      else
 val = c_strlen (arg, 1);
      if (!val)
 return 0;

      if (*length)
 {
   if (type > 0)
     {
       if (TREE_CODE (*length) != INTEGER_CST
    || TREE_CODE (val) != INTEGER_CST)
  return 0;

       if (tree_int_cst_lt (*length, val))
  *length = val;
       return 1;
     }
   else if (simple_cst_equal (val, *length) != 1)
     return 0;
 }

      *length = val;
      return 1;
    }


  if (bitmap_bit_p (visited, SSA_NAME_VERSION (arg)))
    return 1;
  bitmap_set_bit (visited, SSA_NAME_VERSION (arg));

  var = arg;
  def_stmt = SSA_NAME_DEF_STMT (var);

  switch (TREE_CODE (def_stmt))
    {
      case 129:
 {
   tree rhs;




   rhs = TREE_OPERAND (def_stmt, 1);
   STRIP_NOPS (rhs);
   return get_maxval_strlen (rhs, length, visited, type);
 }

      case 128:
 {


   int i;

   for (i = 0; i < PHI_NUM_ARGS (def_stmt); i++)
     {
       tree arg = PHI_ARG_DEF (def_stmt, i);







       if (arg == PHI_RESULT (def_stmt))
  continue;

       if (!get_maxval_strlen (arg, length, visited, type))
  return 0;
     }

   return 1;
 }

      default:
 break;
    }


  return 0;
}
