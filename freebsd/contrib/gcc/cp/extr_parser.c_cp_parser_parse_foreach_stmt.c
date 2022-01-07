
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


typedef scalar_t__ tree ;
typedef enum cpp_ttype { ____Placeholder_cpp_ttype } cpp_ttype ;
struct TYPE_15__ {scalar_t__ value; } ;
struct TYPE_16__ {scalar_t__ keyword; TYPE_1__ u; } ;
typedef TYPE_2__ cp_token ;
struct TYPE_17__ {int lexer; } ;
typedef TYPE_3__ cp_parser ;
typedef int cp_declarator ;
typedef int cp_decl_specifier_seq ;
struct TYPE_14__ {int type; } ;
 int CP_PARSER_DECLARATOR_NAMED ;
 int CP_PARSER_FLAGS_OPTIONAL ;
 scalar_t__ IDENTIFIER_NODE ;
 int NULL_TREE ;
 scalar_t__ RID_ENUM ;
 scalar_t__ RID_IN ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int add_stmt (scalar_t__) ;
 int clear_decl_specs (int *) ;
 int * cp_error_declarator ;
 int cp_finish_decl (scalar_t__,int ,int,int ,int ) ;
 int cp_lexer_consume_token (int ) ;
 TYPE_13__* cp_lexer_peek_nth_token (int ,int) ;
 TYPE_2__* cp_lexer_peek_token (int ) ;
 int cp_parser_abort_tentative_parse (TYPE_3__*) ;
 int cp_parser_commit_to_tentative_parse (TYPE_3__*) ;
 int * cp_parser_declarator (TYPE_3__*,int ,int *,int *,int) ;
 scalar_t__ cp_parser_expression (TYPE_3__*,int) ;
 int cp_parser_parse_tentatively (TYPE_3__*) ;
 scalar_t__ cp_parser_token_is_class_key (TYPE_2__*) ;
 scalar_t__ cp_parser_type_specifier (TYPE_3__*,int ,int *,int,int*,int*) ;
 int error (char*) ;
 scalar_t__ error_mark_node ;
 scalar_t__* ridpointers ;
 scalar_t__ start_decl (int *,int *,int,int ,int ,scalar_t__*) ;

__attribute__((used)) static bool
cp_parser_parse_foreach_stmt (cp_parser *parser)
{
  int decl_spec_declares_class_or_enum;
  bool is_cv_qualifier;
  tree type_spec;
  cp_decl_specifier_seq decl_specs;
  tree node;
  cp_token *token;
  bool is_legit_foreach = 0;
  cp_declarator *declarator;




  token = cp_lexer_peek_token (parser->lexer);
  if (cp_parser_token_is_class_key (token) || token->keyword == RID_ENUM)
    return 0;

  cp_parser_parse_tentatively (parser);
  clear_decl_specs (&decl_specs);
  type_spec
    = cp_parser_type_specifier (parser, CP_PARSER_FLAGS_OPTIONAL,
     &decl_specs,
                        1,
     &decl_spec_declares_class_or_enum,
     &is_cv_qualifier);
  declarator
    = cp_parser_declarator (parser, CP_PARSER_DECLARATOR_NAMED,
        ((void*)0),
                            ((void*)0),
                     0);
  if (declarator == cp_error_declarator)
    {
      cp_parser_abort_tentative_parse (parser);
      return 0;
    }

  token = cp_lexer_peek_token (parser->lexer);

  node = token->u.value;
  if (node && TREE_CODE (node) == IDENTIFIER_NODE
      && node == ridpointers [(int) RID_IN])
    {
      enum cpp_ttype nt = cp_lexer_peek_nth_token (parser->lexer, 2)->type;
      switch (nt)
  {
    case 132:
    case 131:
    case 133:
    case 129: case 128:
    case 135: case 134:
    case 130:
       is_legit_foreach = 1;
        default:
         break;
  }
    }
  if (is_legit_foreach)
    {
      tree pushed_scope = ((void*)0);
      tree decl;
      if (type_spec)
 {

   cp_parser_commit_to_tentative_parse (parser);
    decl = start_decl (declarator, &decl_specs,
         0 ,
         NULL_TREE ,
         NULL_TREE ,
         &pushed_scope);

    if (!decl || decl == error_mark_node)
      {
        error ("selector is undeclared");
        is_legit_foreach = 0;
      }
    else
      cp_finish_decl (decl,
        NULL_TREE ,
       0 ,
        NULL_TREE ,
        0 );
 }
      else {
  tree statement;


  cp_parser_abort_tentative_parse (parser);
  statement = cp_parser_expression (parser, 0);
  add_stmt (statement);
      }


      cp_lexer_consume_token (parser->lexer);
    }
  else
    cp_parser_abort_tentative_parse (parser);
  return is_legit_foreach;
}
