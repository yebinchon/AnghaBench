
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_17__ {scalar_t__ keyword; } ;
typedef TYPE_1__ cp_token ;
struct TYPE_18__ {int scope; int lexer; } ;
typedef TYPE_2__ cp_parser ;


 scalar_t__ BIT_NOT_EXPR ;
 int CPP_SEMICOLON ;
 scalar_t__ IDENTIFIER_NODE ;
 scalar_t__ NULL_TREE ;
 scalar_t__ RID_TYPENAME ;
 int RID_USING ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ at_class_scope_p () ;
 int at_namespace_scope_p () ;
 int cp_lexer_consume_token (int ) ;
 scalar_t__ cp_lexer_next_token_is_not (int ,int ) ;
 TYPE_1__* cp_lexer_peek_token (int ) ;
 scalar_t__ cp_parser_error_occurred (TYPE_2__*) ;
 scalar_t__ cp_parser_global_scope_opt (TYPE_2__*,int) ;
 scalar_t__ cp_parser_lookup_name_simple (TYPE_2__*,scalar_t__) ;
 int cp_parser_name_lookup_error (TYPE_2__*,scalar_t__,scalar_t__,int *) ;
 scalar_t__ cp_parser_nested_name_specifier (TYPE_2__*,int,int,int,int) ;
 scalar_t__ cp_parser_nested_name_specifier_opt (TYPE_2__*,int,int,int,int) ;
 int cp_parser_parse_definitely (TYPE_2__*) ;
 int cp_parser_parse_tentatively (TYPE_2__*) ;
 int cp_parser_require (TYPE_2__*,int ,char*) ;
 int cp_parser_require_keyword (TYPE_2__*,int ,char*) ;
 int cp_parser_simulate_error (TYPE_2__*) ;
 scalar_t__ cp_parser_unqualified_id (TYPE_2__*,int,int,int,int) ;
 scalar_t__ do_class_using_decl (int ,scalar_t__) ;
 int do_local_using_decl (scalar_t__,scalar_t__,scalar_t__) ;
 int do_toplevel_using_decl (scalar_t__,scalar_t__,scalar_t__) ;
 int error (char*) ;
 scalar_t__ error_mark_node ;
 int finish_member_declaration (scalar_t__) ;
 scalar_t__ global_namespace ;

__attribute__((used)) static bool
cp_parser_using_declaration (cp_parser* parser,
        bool access_declaration_p)
{
  cp_token *token;
  bool typename_p = 0;
  bool global_scope_p;
  tree decl;
  tree identifier;
  tree qscope;

  if (access_declaration_p)
    cp_parser_parse_tentatively (parser);
  else
    {

      cp_parser_require_keyword (parser, RID_USING, "`using'");


      token = cp_lexer_peek_token (parser->lexer);

      if (token->keyword == RID_TYPENAME)
 {

   typename_p = 1;

   cp_lexer_consume_token (parser->lexer);
 }
    }


  global_scope_p
    = (cp_parser_global_scope_opt (parser,
                                 0)
       != NULL_TREE);



  if (typename_p || !global_scope_p)
    qscope = cp_parser_nested_name_specifier (parser, typename_p,
                                  1,
                      0,
                              1);


  else
    qscope = cp_parser_nested_name_specifier_opt (parser,
                               0,
                               1,
                   0,
                           1);
  if (!qscope)
    qscope = global_namespace;

  if (access_declaration_p && cp_parser_error_occurred (parser))



    return cp_parser_parse_definitely (parser);


  identifier = cp_parser_unqualified_id (parser,
                             0,
                             1,
                       1,
                     0);

  if (access_declaration_p)
    {
      if (cp_lexer_next_token_is_not (parser->lexer, CPP_SEMICOLON))
 cp_parser_simulate_error (parser);
      if (!cp_parser_parse_definitely (parser))
 return 0;
    }



  if (qscope == error_mark_node || identifier == error_mark_node)
    ;
  else if (TREE_CODE (identifier) != IDENTIFIER_NODE
    && TREE_CODE (identifier) != BIT_NOT_EXPR)



    error ("a template-id may not appear in a using-declaration");
  else
    {
      if (at_class_scope_p ())
 {

   decl = do_class_using_decl (parser->scope, identifier);

   finish_member_declaration (decl);
 }
      else
 {
   decl = cp_parser_lookup_name_simple (parser, identifier);
   if (decl == error_mark_node)
     cp_parser_name_lookup_error (parser, identifier, decl, ((void*)0));
   else if (!at_namespace_scope_p ())
     do_local_using_decl (decl, qscope, identifier);
   else
     do_toplevel_using_decl (decl, qscope, identifier);
 }
    }


  cp_parser_require (parser, CPP_SEMICOLON, "`;'");

  return 1;
}
