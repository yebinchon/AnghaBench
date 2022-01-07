
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
typedef scalar_t__ cppchar_t ;
typedef scalar_t__ cppchar_signed_t ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef TYPE_1__ cpp_token ;


 scalar_t__ CPP_WCHAR ;
 int build_int_cst_wide (int ,scalar_t__,int) ;
 int c_dialect_cxx () ;
 int char_type_node ;
 scalar_t__ cpp_interpret_charconst (int ,TYPE_1__ const*,unsigned int*,int*) ;
 int integer_type_node ;
 int parse_in ;
 int wchar_type_node ;

__attribute__((used)) static tree
lex_charconst (const cpp_token *token)
{
  cppchar_t result;
  tree type, value;
  unsigned int chars_seen;
  int unsignedp;

  result = cpp_interpret_charconst (parse_in, token,
        &chars_seen, &unsignedp);

  if (token->type == CPP_WCHAR)
    type = wchar_type_node;


  else if (!c_dialect_cxx () || chars_seen > 1)
    type = integer_type_node;
  else
    type = char_type_node;



  if (unsignedp || (cppchar_signed_t) result >= 0)
    value = build_int_cst_wide (type, result, 0);
  else
    value = build_int_cst_wide (type, (cppchar_signed_t) result, -1);

  return value;
}
