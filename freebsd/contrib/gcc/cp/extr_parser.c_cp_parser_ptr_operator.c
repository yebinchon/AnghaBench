
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef void* tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_14__ {scalar_t__ type; } ;
typedef TYPE_1__ cp_token ;
struct TYPE_15__ {void* object_scope; void* qualifying_scope; void* scope; int lexer; } ;
typedef TYPE_2__ cp_parser ;
typedef int cp_cv_quals ;


 int ADDR_EXPR ;
 scalar_t__ CPP_AND ;
 scalar_t__ CPP_MULT ;
 int ERROR_MARK ;
 int INDIRECT_REF ;
 scalar_t__ NAMESPACE_DECL ;
 void* NULL_TREE ;
 scalar_t__ TREE_CODE (void*) ;
 int TYPE_UNQUALIFIED ;
 int cp_lexer_consume_token (int ) ;
 TYPE_1__* cp_lexer_peek_token (int ) ;
 scalar_t__ cp_parser_allow_gnu_extensions_p (TYPE_2__*) ;
 int cp_parser_cv_qualifier_seq_opt (TYPE_2__*) ;
 int cp_parser_error (TYPE_2__*,char*) ;
 int cp_parser_error_occurred (TYPE_2__*) ;
 int cp_parser_global_scope_opt (TYPE_2__*,int) ;
 int cp_parser_nested_name_specifier (TYPE_2__*,int,int,int,int) ;
 int cp_parser_parse_definitely (TYPE_2__*) ;
 int cp_parser_parse_tentatively (TYPE_2__*) ;
 scalar_t__ cp_parser_require (TYPE_2__*,scalar_t__,char*) ;
 int error (char*,void*) ;

__attribute__((used)) static enum tree_code
cp_parser_ptr_operator (cp_parser* parser,
   tree* type,
   cp_cv_quals *cv_quals)
{
  enum tree_code code = ERROR_MARK;
  cp_token *token;


  *type = NULL_TREE;

  *cv_quals = TYPE_UNQUALIFIED;


  token = cp_lexer_peek_token (parser->lexer);

  if (token->type == CPP_MULT || token->type == CPP_AND)
    {

      code = (token->type == CPP_AND ? ADDR_EXPR : INDIRECT_REF);


      cp_lexer_consume_token (parser->lexer);





      if (code == INDIRECT_REF
   || cp_parser_allow_gnu_extensions_p (parser))
 *cv_quals = cp_parser_cv_qualifier_seq_opt (parser);
    }
  else
    {

      cp_parser_parse_tentatively (parser);

      cp_parser_global_scope_opt (parser,
                                0);

      cp_parser_nested_name_specifier (parser,
                                  0,
                                  1,
                      0,
                              0);


      if (!cp_parser_error_occurred (parser)
   && cp_parser_require (parser, CPP_MULT, "`*'"))
 {

   code = INDIRECT_REF;

   if (TREE_CODE (parser->scope) == NAMESPACE_DECL)
     error ("%qD is a namespace", parser->scope);
   else
     {


       *type = parser->scope;

       parser->scope = NULL_TREE;
       parser->qualifying_scope = NULL_TREE;
       parser->object_scope = NULL_TREE;

       *cv_quals = cp_parser_cv_qualifier_seq_opt (parser);
     }
 }

      if (!cp_parser_parse_definitely (parser))
 cp_parser_error (parser, "expected ptr-operator");
    }

  return code;
}
