
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c_expr {int original_code; int value; } ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int EQ_EXPR ;
 scalar_t__ ERROR_MARK ;
 int NE_EXPR ;
 int OPT_Waddress ;
 int STRING_CST ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_CODE_CLASS (int) ;
 scalar_t__ TREE_OVERFLOW_P (int ) ;
 int build_binary_op (int,int ,int ,int) ;
 int integer_zerop (int ) ;
 int overflow_warning (int ) ;
 scalar_t__ tcc_comparison ;
 int warn_about_parentheses (int,int,int) ;
 scalar_t__ warn_parentheses ;
 int warning (int ,char*) ;

struct c_expr
parser_build_binary_op (enum tree_code code, struct c_expr arg1,
   struct c_expr arg2)
{
  struct c_expr result;

  enum tree_code code1 = arg1.original_code;
  enum tree_code code2 = arg2.original_code;

  result.value = build_binary_op (code, arg1.value, arg2.value, 1);
  result.original_code = code;

  if (TREE_CODE (result.value) == ERROR_MARK)
    return result;



  if (warn_parentheses)
    warn_about_parentheses (code, code1, code2);



  if (code == EQ_EXPR || code == NE_EXPR)
    {
      if ((code1 == STRING_CST && !integer_zerop (arg2.value))
   || (code2 == STRING_CST && !integer_zerop (arg1.value)))
 warning (OPT_Waddress,
                 "comparison with string literal results in unspecified behaviour");
    }
  else if (TREE_CODE_CLASS (code) == tcc_comparison
    && (code1 == STRING_CST || code2 == STRING_CST))
    warning (OPT_Waddress,
             "comparison with string literal results in unspecified behaviour");

  if (TREE_OVERFLOW_P (result.value)
      && !TREE_OVERFLOW_P (arg1.value)
      && !TREE_OVERFLOW_P (arg2.value))
    overflow_warning (result.value);

  return result;
}
