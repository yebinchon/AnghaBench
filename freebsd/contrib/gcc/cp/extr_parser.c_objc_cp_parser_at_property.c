
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_9__ {scalar_t__ type; } ;
typedef TYPE_1__ cp_token ;
struct TYPE_10__ {int lexer; } ;
typedef TYPE_2__ cp_parser ;


 scalar_t__ CPP_CLOSE_PAREN ;
 scalar_t__ CPP_COLON ;
 scalar_t__ CPP_COMMA ;
 scalar_t__ CPP_EOF ;
 scalar_t__ CPP_EQ ;
 scalar_t__ CPP_OPEN_PAREN ;
 scalar_t__ NULL_TREE ;
 scalar_t__ RID_GETTER ;
 scalar_t__ RID_NONATOMIC ;
 scalar_t__ RID_READONLY ;
 scalar_t__ RID_SETTER ;
 TYPE_1__* cp_lexer_consume_token (int ) ;
 scalar_t__ cp_lexer_next_token_is (int ,scalar_t__) ;
 scalar_t__ cp_lexer_next_token_is_not (int ,scalar_t__) ;
 TYPE_1__* cp_lexer_peek_token (int ) ;
 scalar_t__ cp_parser_identifier (TYPE_2__*) ;
 scalar_t__ cp_parser_objc_selector (TYPE_2__*) ;
 int error (char*) ;
 int objc_cp_parse_property_decl (TYPE_2__*) ;
 int objc_set_property_attr (int,scalar_t__) ;
 scalar_t__* ridpointers ;
 int warning (int ,char*) ;

__attribute__((used)) static void
objc_cp_parser_at_property (cp_parser *parser)
{
  cp_token *token;

  objc_set_property_attr (0, NULL_TREE);

  cp_lexer_consume_token (parser->lexer);
  token = cp_lexer_peek_token (parser->lexer);
  if (token->type == CPP_OPEN_PAREN)
    {
      cp_lexer_consume_token (parser->lexer);
      while (token->type != CPP_CLOSE_PAREN && token->type != CPP_EOF)
 {
    tree node;


    node = cp_parser_identifier (parser);
    if (node == ridpointers [(int) RID_READONLY])
     {

       objc_set_property_attr (1, NULL_TREE);
     }
   else if (node == ridpointers [(int) RID_GETTER]
     || node == ridpointers [(int) RID_SETTER])
     {

       token = cp_lexer_consume_token (parser->lexer);
       if (token->type == CPP_EQ)
  {

    tree attr_ident = cp_parser_objc_selector (parser);
    int num;
    if (node == ridpointers [(int) RID_GETTER])
      num = 2;
    else
      {
        num = 3;

        if (cp_lexer_next_token_is (parser->lexer, CPP_COLON))
     cp_lexer_consume_token (parser->lexer);
      }
    objc_set_property_attr (num, attr_ident);
  }
       else
  {
    error ("getter/setter attribute must be followed by '='");
    break;
  }
     }

   else if (node == ridpointers [(int) RID_NONATOMIC])
     {
       objc_set_property_attr (13, NULL_TREE);
     }

   else
     {
       error ("unknown property attribute");
       break;
     }

   if (cp_lexer_next_token_is_not (parser->lexer, CPP_COMMA)
       && cp_lexer_next_token_is_not (parser->lexer, CPP_CLOSE_PAREN)
       && cp_lexer_next_token_is_not (parser->lexer, CPP_EOF))
     warning (0, "property attributes must be separated by a comma");

   if (cp_lexer_next_token_is (parser->lexer, CPP_COMMA))
     cp_lexer_consume_token (parser->lexer);
   token = cp_lexer_peek_token (parser->lexer);
 }
 if (token->type != CPP_CLOSE_PAREN)
   {
     error ("syntax error in @property's attribute declaration");
   }

 cp_lexer_consume_token (parser->lexer);
    }
    objc_cp_parse_property_decl (parser);
}
