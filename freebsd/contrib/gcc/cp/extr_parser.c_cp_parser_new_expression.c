
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_14__ {int lexer; } ;
typedef TYPE_1__ cp_parser ;


 int CPP_CLOSE_PAREN ;
 int CPP_OPEN_PAREN ;
 int CPP_OPEN_SQUARE ;
 scalar_t__ NULL_TREE ;
 int RID_NEW ;
 scalar_t__ build_new (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;
 int cp_lexer_consume_token (int ) ;
 scalar_t__ cp_lexer_next_token_is (int ,int ) ;
 int cp_parser_direct_new_declarator (TYPE_1__*) ;
 scalar_t__ cp_parser_global_scope_opt (TYPE_1__*,int) ;
 scalar_t__ cp_parser_new_initializer (TYPE_1__*) ;
 scalar_t__ cp_parser_new_placement (TYPE_1__*) ;
 scalar_t__ cp_parser_new_type_id (TYPE_1__*,scalar_t__*) ;
 scalar_t__ cp_parser_non_integral_constant_expression (TYPE_1__*,char*) ;
 int cp_parser_parse_definitely (TYPE_1__*) ;
 int cp_parser_parse_tentatively (TYPE_1__*) ;
 int cp_parser_require (TYPE_1__*,int ,char*) ;
 int cp_parser_require_keyword (TYPE_1__*,int ,char*) ;
 scalar_t__ cp_parser_type_id (TYPE_1__*) ;
 int error (char*) ;
 scalar_t__ error_mark_node ;
 int inform (char*) ;

__attribute__((used)) static tree
cp_parser_new_expression (cp_parser* parser)
{
  bool global_scope_p;
  tree placement;
  tree type;
  tree initializer;
  tree nelts;


  global_scope_p
    = (cp_parser_global_scope_opt (parser,
                                 0)
       != NULL_TREE);

  cp_parser_require_keyword (parser, RID_NEW, "`new'");


  cp_parser_parse_tentatively (parser);

  placement = cp_parser_new_placement (parser);

  if (!cp_parser_parse_definitely (parser))
    placement = NULL_TREE;



  if (cp_lexer_next_token_is (parser->lexer, CPP_OPEN_PAREN))
    {

      cp_lexer_consume_token (parser->lexer);

      type = cp_parser_type_id (parser);

      cp_parser_require (parser, CPP_CLOSE_PAREN, "`)'");



      if (cp_lexer_next_token_is (parser->lexer, CPP_OPEN_SQUARE))
 {
   error ("array bound forbidden after parenthesized type-id");
   inform ("try removing the parentheses around the type-id");
   cp_parser_direct_new_declarator (parser);
 }
      nelts = NULL_TREE;
    }

  else
    type = cp_parser_new_type_id (parser, &nelts);


  if (cp_lexer_next_token_is (parser->lexer, CPP_OPEN_PAREN))
    initializer = cp_parser_new_initializer (parser);
  else
    initializer = NULL_TREE;



  if (cp_parser_non_integral_constant_expression (parser, "`new'"))
    return error_mark_node;


  return build_new (placement, type, nelts, initializer, global_scope_p);
}
