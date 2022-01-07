
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_7__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* tree ;
struct TYPE_8__ {int lexer; void* object_scope; void* qualifying_scope; void* scope; } ;
typedef TYPE_1__ cp_parser ;
struct TYPE_9__ {scalar_t__ type; } ;


 int CPP_NAME ;
 scalar_t__ CPP_SCOPE ;
 scalar_t__ TYPE_P (void*) ;
 int class_type ;
 scalar_t__ cp_lexer_next_token_is_not (int ,int ) ;
 TYPE_7__* cp_lexer_peek_nth_token (int ,int) ;
 void* cp_parser_class_name (TYPE_1__*,int,int,int ,int,int,int) ;
 void* cp_parser_namespace_name (TYPE_1__*) ;
 int cp_parser_parse_definitely (TYPE_1__*) ;
 int cp_parser_parse_tentatively (TYPE_1__*) ;
 void* error_mark_node ;
 int none_type ;

__attribute__((used)) static tree
cp_parser_class_or_namespace_name (cp_parser *parser,
       bool typename_keyword_p,
       bool template_keyword_p,
       bool check_dependency_p,
       bool type_p,
       bool is_declaration)
{
  tree saved_scope;
  tree saved_qualifying_scope;
  tree saved_object_scope;
  tree scope;
  bool only_class_p;




  saved_scope = parser->scope;
  saved_qualifying_scope = parser->qualifying_scope;
  saved_object_scope = parser->object_scope;


  only_class_p = template_keyword_p || (saved_scope && TYPE_P (saved_scope));
  if (!only_class_p)
    cp_parser_parse_tentatively (parser);
  scope = cp_parser_class_name (parser,
    typename_keyword_p,
    template_keyword_p,
    type_p ? class_type : none_type,
    check_dependency_p,
                     0,
    is_declaration);

  if (!only_class_p && !cp_parser_parse_definitely (parser))
    {

      parser->scope = saved_scope;
      parser->qualifying_scope = saved_qualifying_scope;
      parser->object_scope = saved_object_scope;




      if (cp_lexer_next_token_is_not (parser->lexer, CPP_NAME)
   || cp_lexer_peek_nth_token (parser->lexer, 2)->type != CPP_SCOPE)
 return error_mark_node;
      scope = cp_parser_namespace_name (parser);
    }

  return scope;
}
