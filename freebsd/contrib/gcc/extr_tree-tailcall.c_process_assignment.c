
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int block_stmt_iterator ;


 int DECL_RESULT (int ) ;
 scalar_t__ FLOAT_TYPE_P (int ) ;


 scalar_t__ SSA_NAME ;
 int STRIP_NOPS (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_CODE_CLASS (int) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int current_function_decl ;
 int flag_unsafe_math_optimizations ;
 int independent_of_stmt_p (int ,int ,int ) ;
 scalar_t__ tcc_binary ;

__attribute__((used)) static bool
process_assignment (tree ass, tree stmt, block_stmt_iterator call, tree *m,
      tree *a, tree *ass_var)
{
  tree op0, op1, non_ass_var;
  tree dest = TREE_OPERAND (ass, 0);
  tree src = TREE_OPERAND (ass, 1);
  enum tree_code code = TREE_CODE (src);
  tree src_var = src;





  STRIP_NOPS (src_var);
  if (TREE_CODE (src_var) == SSA_NAME)
    {
      if (src_var != *ass_var)
 return 0;

      *ass_var = dest;
      return 1;
    }

  if (TREE_CODE_CLASS (code) != tcc_binary)
    return 0;




  if (!flag_unsafe_math_optimizations)
    if (FLOAT_TYPE_P (TREE_TYPE (DECL_RESULT (current_function_decl))))
      return 0;
  op0 = TREE_OPERAND (src, 0);
  op1 = TREE_OPERAND (src, 1);

  if (op0 == *ass_var
      && (non_ass_var = independent_of_stmt_p (op1, stmt, call)))
    ;
  else if (op1 == *ass_var
    && (non_ass_var = independent_of_stmt_p (op0, stmt, call)))
    ;
  else
    return 0;

  switch (code)
    {
    case 128:




      if (*a)
 return 0;
      *a = non_ass_var;
      *ass_var = dest;
      return 1;

    case 129:



      if (*a || *m)
 return 0;
      *m = non_ass_var;
      *ass_var = dest;
      return 1;



    default:
      return 0;
    }
}
