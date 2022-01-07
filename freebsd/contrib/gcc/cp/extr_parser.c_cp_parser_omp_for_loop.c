
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_18__ ;


typedef int * tree ;
typedef int location_t ;
struct TYPE_20__ {int in_statement; int lexer; } ;
typedef TYPE_1__ cp_parser ;
typedef int cp_declarator ;
typedef int cp_decl_specifier_seq ;
struct TYPE_19__ {int location; } ;


 int CPP_CLOSE_PAREN ;
 int CPP_EQ ;
 int CPP_OPEN_PAREN ;
 int CPP_SEMICOLON ;
 int CP_PARSER_DECLARATOR_NAMED ;
 int IN_OMP_FOR ;
 int LOOKUP_ONLYCONVERTING ;
 int NULL_TREE ;
 int RID_FOR ;
 int cp_finish_decl (int *,int ,int,int *,int ) ;
 TYPE_18__* cp_lexer_consume_token (int ) ;
 int cp_lexer_next_token_is_keyword (int ,int ) ;
 scalar_t__ cp_lexer_next_token_is_not (int ,int ) ;
 int cp_parser_abort_tentative_parse (TYPE_1__*) ;
 int * cp_parser_asm_specification_opt (TYPE_1__*) ;
 int * cp_parser_assignment_expression (TYPE_1__*,int) ;
 int * cp_parser_attributes_opt (TYPE_1__*) ;
 int * cp_parser_condition (TYPE_1__*) ;
 int * cp_parser_declarator (TYPE_1__*,int ,int *,int *,int) ;
 int cp_parser_error (TYPE_1__*,char*) ;
 int cp_parser_error_occurred (TYPE_1__*) ;
 int * cp_parser_expression (TYPE_1__*,int) ;
 scalar_t__ cp_parser_parse_definitely (TYPE_1__*) ;
 int cp_parser_parse_tentatively (TYPE_1__*) ;
 int cp_parser_require (TYPE_1__*,int ,char*) ;
 int cp_parser_skip_to_closing_parenthesis (TYPE_1__*,int,int,int) ;
 int cp_parser_statement (TYPE_1__*,int ,int,int *) ;
 int cp_parser_type_specifier_seq (TYPE_1__*,int,int *) ;
 int * finish_omp_for (int ,int *,int *,int *,int *,int *,int *) ;
 int pop_scope (int *) ;
 int * pop_stmt_list (int *) ;
 int * push_stmt_list () ;
 int * start_decl (int *,int *,int,int *,int ,int **) ;

__attribute__((used)) static tree
cp_parser_omp_for_loop (cp_parser *parser)
{
  tree init, cond, incr, body, decl, pre_body;
  location_t loc;

  if (!cp_lexer_next_token_is_keyword (parser->lexer, RID_FOR))
    {
      cp_parser_error (parser, "for statement expected");
      return ((void*)0);
    }
  loc = cp_lexer_consume_token (parser->lexer)->location;
  if (!cp_parser_require (parser, CPP_OPEN_PAREN, "`('"))
    return ((void*)0);

  init = decl = ((void*)0);
  pre_body = push_stmt_list ();
  if (cp_lexer_next_token_is_not (parser->lexer, CPP_SEMICOLON))
    {
      cp_decl_specifier_seq type_specifiers;




      cp_parser_parse_tentatively (parser);
      cp_parser_type_specifier_seq (parser, 0,
        &type_specifiers);
      if (!cp_parser_error_occurred (parser))
 {
   tree asm_specification, attributes;
   cp_declarator *declarator;

   declarator = cp_parser_declarator (parser,
          CP_PARSER_DECLARATOR_NAMED,
                                  ((void*)0),
                              ((void*)0),
                       0);
   attributes = cp_parser_attributes_opt (parser);
   asm_specification = cp_parser_asm_specification_opt (parser);

   cp_parser_require (parser, CPP_EQ, "`='");
   if (cp_parser_parse_definitely (parser))
     {
       tree pushed_scope;

       decl = start_decl (declarator, &type_specifiers,
                       0, attributes,
                           NULL_TREE,
     &pushed_scope);

       init = cp_parser_assignment_expression (parser, 0);

       cp_finish_decl (decl, NULL_TREE, 0,
         asm_specification, LOOKUP_ONLYCONVERTING);

       if (pushed_scope)
  pop_scope (pushed_scope);
     }
 }
      else
 cp_parser_abort_tentative_parse (parser);



      if (decl == ((void*)0))
 init = cp_parser_expression (parser, 0);
    }
  cp_parser_require (parser, CPP_SEMICOLON, "`;'");
  pre_body = pop_stmt_list (pre_body);

  cond = ((void*)0);
  if (cp_lexer_next_token_is_not (parser->lexer, CPP_SEMICOLON))
    cond = cp_parser_condition (parser);
  cp_parser_require (parser, CPP_SEMICOLON, "`;'");

  incr = ((void*)0);
  if (cp_lexer_next_token_is_not (parser->lexer, CPP_CLOSE_PAREN))
    incr = cp_parser_expression (parser, 0);

  if (!cp_parser_require (parser, CPP_CLOSE_PAREN, "`)'"))
    cp_parser_skip_to_closing_parenthesis (parser, 1,
                     0,
                          1);



  parser->in_statement = IN_OMP_FOR;



  body = push_stmt_list ();
  cp_parser_statement (parser, NULL_TREE, 0, ((void*)0));
  body = pop_stmt_list (body);

  return finish_omp_for (loc, decl, init, cond, incr, body, pre_body);
}
