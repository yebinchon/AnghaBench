
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int tree ;
struct TYPE_10__ {int lexer; } ;
typedef TYPE_1__ cp_parser ;


 scalar_t__ NULL_TREE ;
 int RID_TYPENAME ;
 int cp_lexer_consume_token (int ) ;
 scalar_t__ cp_lexer_next_token_is_keyword (int ,int ) ;
 int cp_parser_class_name (TYPE_1__*,int,int,int ,int,int,int) ;
 scalar_t__ cp_parser_global_scope_opt (TYPE_1__*,int) ;
 int cp_parser_identifier (TYPE_1__*) ;
 scalar_t__ cp_parser_nested_name_specifier_opt (TYPE_1__*,int,int,int,int) ;
 int cp_parser_optional_template_keyword (TYPE_1__*) ;
 scalar_t__ cp_parser_parse_definitely (TYPE_1__*) ;
 int cp_parser_parse_tentatively (TYPE_1__*) ;
 int error (char*) ;
 int none_type ;

__attribute__((used)) static tree
cp_parser_mem_initializer_id (cp_parser* parser)
{
  bool global_scope_p;
  bool nested_name_specifier_p;
  bool template_p = 0;
  tree id;


  if (cp_lexer_next_token_is_keyword (parser->lexer, RID_TYPENAME))
    {
      error ("keyword %<typename%> not allowed in this context (a qualified "
      "member initializer is implicitly a type)");
      cp_lexer_consume_token (parser->lexer);
    }

  global_scope_p
    = (cp_parser_global_scope_opt (parser,
                                 0)
       != NULL_TREE);
  nested_name_specifier_p
    = (cp_parser_nested_name_specifier_opt (parser,
                                1,
                                1,
                    1,
                            1)
       != NULL_TREE);
  if (nested_name_specifier_p)
    template_p = cp_parser_optional_template_keyword (parser);


  if (global_scope_p || nested_name_specifier_p)
    return cp_parser_class_name (parser,
                            1,
                            template_p,
     none_type,
                            1,
                      0,
                        1);

  cp_parser_parse_tentatively (parser);

  id = cp_parser_class_name (parser,
                               1,
                               0,
        none_type,
                               1,
                         0,
                           1);

  if (cp_parser_parse_definitely (parser))
    return id;

  return cp_parser_identifier (parser);
}
