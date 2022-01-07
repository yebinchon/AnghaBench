
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int tree ;
struct TYPE_12__ {int keyword; } ;
typedef TYPE_1__ cp_token ;
struct TYPE_13__ {int lexer; } ;
typedef TYPE_2__ cp_parser ;


 int CPP_COMMA ;
 int CPP_EQ ;
 int CPP_GREATER ;
 int CPP_KEYWORD ;
 int CPP_LESS ;
 int CPP_NAME ;
 int NULL_TREE ;



 int TREE_CODE (int ) ;
 int TYPE_DECL ;
 int build_tree_list (int ,int ) ;
 int check_template_template_default_arg (int ) ;
 int class_type_node ;
 int cp_lexer_consume_token (int ) ;
 int cp_lexer_next_token_is (int ,int ) ;
 int cp_lexer_next_token_is_not (int ,int ) ;
 int cp_parser_id_expression (TYPE_2__*,int,int,int*,int,int) ;
 int cp_parser_identifier (TYPE_2__*) ;
 int cp_parser_lookup_name (TYPE_2__*,int ,int ,int,int,int,int *) ;
 TYPE_1__* cp_parser_require (TYPE_2__*,int ,char*) ;
 int cp_parser_require_keyword (TYPE_2__*,int const,char*) ;
 int cp_parser_template_parameter_list (TYPE_2__*) ;
 int cp_parser_type_id (TYPE_2__*) ;
 int dk_no_deferred ;
 int error_mark_node ;
 int finish_template_template_parm (int ,int ) ;
 int finish_template_type_parm (int ,int ) ;
 int gcc_unreachable () ;
 int none_type ;
 int pop_deferring_access_checks () ;
 int push_deferring_access_checks (int ) ;

__attribute__((used)) static tree
cp_parser_type_parameter (cp_parser* parser)
{
  cp_token *token;
  tree parameter;


  token = cp_parser_require (parser, CPP_KEYWORD,
        "`class', `typename', or `template'");
  if (!token)
    return error_mark_node;

  switch (token->keyword)
    {
    case 130:
    case 128:
      {
 tree identifier;
 tree default_argument;



 if (cp_lexer_next_token_is (parser->lexer, CPP_NAME))
   identifier = cp_parser_identifier (parser);
 else
   identifier = NULL_TREE;


 parameter = finish_template_type_parm (class_type_node, identifier);


 if (cp_lexer_next_token_is (parser->lexer, CPP_EQ))
   {

     cp_lexer_consume_token (parser->lexer);

     push_deferring_access_checks (dk_no_deferred);
     default_argument = cp_parser_type_id (parser);
     pop_deferring_access_checks ();
   }
 else
   default_argument = NULL_TREE;



 parameter = build_tree_list (default_argument, parameter);
      }
      break;

    case 129:
      {
 tree parameter_list;
 tree identifier;
 tree default_argument;


 cp_parser_require (parser, CPP_LESS, "`<'");

 parameter_list = cp_parser_template_parameter_list (parser);

 cp_parser_require (parser, CPP_GREATER, "`>'");

 cp_parser_require_keyword (parser, 130, "`class'");




 if (cp_lexer_next_token_is_not (parser->lexer, CPP_EQ)
     && cp_lexer_next_token_is_not (parser->lexer, CPP_GREATER)
     && cp_lexer_next_token_is_not (parser->lexer, CPP_COMMA))
   {
     identifier = cp_parser_identifier (parser);

     if (identifier == error_mark_node)
       identifier = NULL_TREE;
   }
 else
   identifier = NULL_TREE;


 parameter = finish_template_template_parm (class_type_node,
         identifier);



 if (cp_lexer_next_token_is (parser->lexer, CPP_EQ))
   {
     bool is_template;


     cp_lexer_consume_token (parser->lexer);

     push_deferring_access_checks (dk_no_deferred);
     default_argument
       = cp_parser_id_expression (parser,
                             0,
                             1,
                     &is_template,
                       0,
                     0);
     if (TREE_CODE (default_argument) == TYPE_DECL)



   ;
     else

       default_argument
  = cp_parser_lookup_name (parser, default_argument,
      none_type,
                      is_template,
                       0,
                           1,
                          ((void*)0));

     default_argument
       = check_template_template_default_arg (default_argument);
     pop_deferring_access_checks ();
   }
 else
   default_argument = NULL_TREE;



 parameter = build_tree_list (default_argument, parameter);
      }
      break;

    default:
      gcc_unreachable ();
      break;
    }

  return parameter;
}
