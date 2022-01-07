
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tree ;
struct TYPE_7__ {scalar_t__ keyword; } ;
typedef TYPE_1__ cp_token ;
struct TYPE_8__ {int lexer; } ;
typedef TYPE_2__ cp_parser ;
typedef int cp_cv_quals ;


 int NULL_TREE ;
 scalar_t__ RID_ATTRIBUTE ;
 int TYPE_UNQUALIFIED ;
 int chainon (int ,int ) ;
 TYPE_1__* cp_lexer_peek_token (int ) ;
 int cp_parser_attributes_opt (TYPE_2__*) ;
 int cp_parser_cv_qualifier_seq_opt (TYPE_2__*) ;

__attribute__((used)) static cp_cv_quals
cp_parser_cv_qualifier_or_attribute_seq_opt (cp_parser *parser, tree *attrs_p)
{
  cp_cv_quals quals = TYPE_UNQUALIFIED;
  cp_cv_quals q;
  cp_token *token;

  *attrs_p = NULL_TREE;
  while (1)
    {

      token = cp_lexer_peek_token (parser->lexer);

      if (token->keyword == RID_ATTRIBUTE)
 {

   *attrs_p = chainon (*attrs_p,
         cp_parser_attributes_opt (parser));
   continue;
 }

      q = cp_parser_cv_qualifier_seq_opt (parser);
      if (q == TYPE_UNQUALIFIED)
 break;
      quals |= q;
    }
  return quals;
}
