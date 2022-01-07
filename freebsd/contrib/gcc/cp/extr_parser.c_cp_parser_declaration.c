
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ type; scalar_t__ keyword; } ;
typedef TYPE_1__ cp_token ;
struct TYPE_17__ {int lexer; } ;
typedef TYPE_2__ cp_parser ;


 scalar_t__ CPP_EOF ;
 scalar_t__ CPP_EQ ;
 scalar_t__ CPP_GREATER ;
 scalar_t__ CPP_LESS ;
 scalar_t__ CPP_NAME ;
 scalar_t__ CPP_OPEN_BRACE ;
 scalar_t__ OBJC_IS_AT_KEYWORD (scalar_t__) ;
 scalar_t__ RID_ATTRIBUTE ;
 scalar_t__ RID_EXPORT ;
 scalar_t__ RID_EXTERN ;
 scalar_t__ RID_INLINE ;
 scalar_t__ RID_MAX ;
 scalar_t__ RID_NAMESPACE ;
 scalar_t__ RID_STATIC ;
 scalar_t__ RID_TEMPLATE ;
 scalar_t__ c_dialect_objc () ;
 TYPE_1__* cp_lexer_peek_nth_token (int ,int) ;
 TYPE_1__* cp_lexer_peek_token (int ) ;
 scalar_t__ cp_parser_allow_gnu_extensions_p (TYPE_2__*) ;
 int cp_parser_block_declaration (TYPE_2__*,int) ;
 int cp_parser_explicit_instantiation (TYPE_2__*) ;
 int cp_parser_explicit_specialization (TYPE_2__*) ;
 scalar_t__ cp_parser_extension_opt (TYPE_2__*,int*) ;
 scalar_t__ cp_parser_is_string_literal (TYPE_1__*) ;
 int cp_parser_linkage_specification (TYPE_2__*) ;
 int cp_parser_namespace_definition (TYPE_2__*) ;
 int cp_parser_objc_declaration (TYPE_2__*) ;
 int cp_parser_template_declaration (TYPE_2__*,int) ;
 int declarator_obstack ;
 void* obstack_alloc (int *,int ) ;
 int obstack_free (int *,void*) ;
 int pedantic ;

__attribute__((used)) static void
cp_parser_declaration (cp_parser* parser)
{
  cp_token token1;
  cp_token token2;
  int saved_pedantic;
  void *p;


  if (cp_parser_extension_opt (parser, &saved_pedantic))
    {

      cp_parser_declaration (parser);

      pedantic = saved_pedantic;

      return;
    }


  token1 = *cp_lexer_peek_token (parser->lexer);

  if (token1.type != CPP_EOF)
    token2 = *cp_lexer_peek_nth_token (parser->lexer, 2);
  else
    {
      token2.type = CPP_EOF;
      token2.keyword = RID_MAX;
    }


  p = obstack_alloc (&declarator_obstack, 0);



  if (token1.keyword == RID_EXTERN
      && cp_parser_is_string_literal (&token2))
    cp_parser_linkage_specification (parser);



  else if (token1.keyword == RID_TEMPLATE)
    {

      if (token2.type == CPP_LESS
   && cp_lexer_peek_nth_token (parser->lexer, 3)->type == CPP_GREATER)
 cp_parser_explicit_specialization (parser);

      else if (token2.type == CPP_LESS)
 cp_parser_template_declaration (parser, 0);

      else
 cp_parser_explicit_instantiation (parser);
    }


  else if (token1.keyword == RID_EXPORT)
    cp_parser_template_declaration (parser, 0);



  else if (cp_parser_allow_gnu_extensions_p (parser)
    && (token1.keyword == RID_EXTERN
        || token1.keyword == RID_STATIC
        || token1.keyword == RID_INLINE)
    && token2.keyword == RID_TEMPLATE)
    cp_parser_explicit_instantiation (parser);


  else if (token1.keyword == RID_NAMESPACE
    && (
        (token2.type == CPP_NAME
  && (cp_lexer_peek_nth_token (parser->lexer, 3)->type
      != CPP_EQ))

        || token2.type == CPP_OPEN_BRACE
        || token2.keyword == RID_ATTRIBUTE))
    cp_parser_namespace_definition (parser);

  else if (c_dialect_objc () && OBJC_IS_AT_KEYWORD (token1.keyword))
    cp_parser_objc_declaration (parser);


  else

    cp_parser_block_declaration (parser, 0);


  obstack_free (&declarator_obstack, p);
}
