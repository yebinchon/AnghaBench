
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int cp_parser ;


 int RID_OPERATOR ;
 int cp_parser_operator (int *) ;
 int cp_parser_require_keyword (int *,int ,char*) ;
 int error_mark_node ;

__attribute__((used)) static tree
cp_parser_operator_function_id (cp_parser* parser)
{

  if (!cp_parser_require_keyword (parser, RID_OPERATOR, "`operator'"))
    return error_mark_node;

  return cp_parser_operator (parser);
}
