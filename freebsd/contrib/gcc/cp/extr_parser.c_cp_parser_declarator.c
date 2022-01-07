
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_24__ {scalar_t__ type; } ;
typedef TYPE_1__ cp_token ;
typedef int cp_parser_declarator_kind ;
struct TYPE_25__ {int lexer; } ;
typedef TYPE_2__ cp_parser ;
struct TYPE_26__ {scalar_t__ attributes; } ;
typedef TYPE_3__ cp_declarator ;
typedef int cp_cv_quals ;


 int CPP_OPEN_PAREN ;
 scalar_t__ CPP_XOR ;
 int CP_PARSER_DECLARATOR_EITHER ;
 int CP_PARSER_DECLARATOR_NAMED ;
 int INDIRECT_REF ;
 scalar_t__ NULL_TREE ;
 TYPE_3__* cp_error_declarator ;
 int cp_lexer_consume_token (int ) ;
 int cp_lexer_next_token_is (int ,int ) ;
 TYPE_1__* cp_lexer_peek_token (int ) ;
 scalar_t__ cp_parser_allow_gnu_extensions_p (TYPE_2__*) ;
 scalar_t__ cp_parser_attributes_opt (TYPE_2__*) ;
 int cp_parser_cv_qualifier_or_attribute_seq_opt (TYPE_2__*,scalar_t__*) ;
 TYPE_3__* cp_parser_direct_declarator (TYPE_2__*,int ,int*,int) ;
 scalar_t__ cp_parser_parse_definitely (TYPE_2__*) ;
 int cp_parser_parse_tentatively (TYPE_2__*) ;
 int cp_parser_ptr_operator (TYPE_2__*,scalar_t__*,int *) ;
 scalar_t__ flag_blocks ;
 TYPE_3__* make_block_pointer_declarator (scalar_t__,int ,TYPE_3__*) ;
 TYPE_3__* make_pointer_declarator (int ,TYPE_3__*) ;
 TYPE_3__* make_ptrmem_declarator (int ,scalar_t__,TYPE_3__*) ;
 TYPE_3__* make_reference_declarator (int ,TYPE_3__*) ;

__attribute__((used)) static cp_declarator *
cp_parser_declarator (cp_parser* parser,
        cp_parser_declarator_kind dcl_kind,
        int* ctor_dtor_or_conv_p,
        bool* parenthesized_p,
        bool member_p)
{
  cp_token *token;
  cp_declarator *declarator;
  enum tree_code code;
  cp_cv_quals cv_quals;
  tree class_type;
  tree attributes = NULL_TREE;



  if (ctor_dtor_or_conv_p)
    *ctor_dtor_or_conv_p = 0;

  if (cp_parser_allow_gnu_extensions_p (parser))
    attributes = cp_parser_attributes_opt (parser);


  token = cp_lexer_peek_token (parser->lexer);


  if (flag_blocks && token->type == CPP_XOR)
    {
      cp_cv_quals quals;
      cp_declarator *inner;
      tree attrs;

      cp_lexer_consume_token (parser->lexer);


      quals = cp_parser_cv_qualifier_or_attribute_seq_opt (parser, &attrs);

      inner = cp_parser_declarator (parser, CP_PARSER_DECLARATOR_EITHER,
                                ((void*)0),
                            ((void*)0),
                     0);
      if (inner == cp_error_declarator)
 return inner;
      return make_block_pointer_declarator (attrs, quals, inner);
    }



  cp_parser_parse_tentatively (parser);

  code = cp_parser_ptr_operator (parser,
     &class_type,
     &cv_quals);

  if (cp_parser_parse_definitely (parser))
    {


      if (parenthesized_p)
 *parenthesized_p = 1;


      if (dcl_kind != CP_PARSER_DECLARATOR_NAMED)
 cp_parser_parse_tentatively (parser);


      declarator = cp_parser_declarator (parser, dcl_kind,
                              ((void*)0),
                          ((void*)0),
                   0);



      if (dcl_kind != CP_PARSER_DECLARATOR_NAMED
   && !cp_parser_parse_definitely (parser))
 declarator = ((void*)0);


      if (class_type)
 declarator = make_ptrmem_declarator (cv_quals,
          class_type,
          declarator);
      else if (code == INDIRECT_REF)
 declarator = make_pointer_declarator (cv_quals, declarator);
      else
 declarator = make_reference_declarator (cv_quals, declarator);
    }

  else
    {
      if (parenthesized_p)
 *parenthesized_p = cp_lexer_next_token_is (parser->lexer,
         CPP_OPEN_PAREN);
      declarator = cp_parser_direct_declarator (parser, dcl_kind,
      ctor_dtor_or_conv_p,
      member_p);
    }

  if (attributes && declarator && declarator != cp_error_declarator)
    declarator->attributes = attributes;

  return declarator;
}
