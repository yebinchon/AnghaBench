
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int cp_parser ;


 int BCS_TRY_BLOCK ;
 int CPP_CLOSE_BRACE ;
 int CPP_OPEN_BRACE ;
 int begin_compound_stmt (int ) ;
 int cp_parser_require (int *,int ,char*) ;
 int cp_parser_statement_seq_opt (int *,int ) ;
 int error_mark_node ;
 int finish_compound_stmt (int ) ;
 int objc_mark_locals_volatile (int *) ;

__attribute__((used)) static tree
cp_parser_compound_statement (cp_parser *parser, tree in_statement_expr,

         bool in_try, bool objc_sjlj_exceptions)
{
  tree compound_stmt;


  if (!cp_parser_require (parser, CPP_OPEN_BRACE, "`{'"))
    return error_mark_node;

  compound_stmt = begin_compound_stmt (in_try ? BCS_TRY_BLOCK : 0);

  cp_parser_statement_seq_opt (parser, in_statement_expr);

  if (objc_sjlj_exceptions)
    objc_mark_locals_volatile (((void*)0));


  finish_compound_stmt (compound_stmt);

  cp_parser_require (parser, CPP_CLOSE_BRACE, "`}'");

  return compound_stmt;
}
