
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int keyword; } ;
typedef TYPE_1__ cp_token ;
struct TYPE_6__ {int lexer; } ;
typedef TYPE_2__ cp_parser ;
typedef int cp_cv_quals ;





 int TYPE_QUAL_CONST ;
 int TYPE_QUAL_RESTRICT ;
 int TYPE_QUAL_VOLATILE ;
 int TYPE_UNQUALIFIED ;
 int cp_lexer_consume_token (int ) ;
 TYPE_1__* cp_lexer_peek_token (int ) ;
 int cp_lexer_purge_token (int ) ;
 int error (char*) ;

__attribute__((used)) static cp_cv_quals
cp_parser_cv_qualifier_seq_opt (cp_parser* parser)
{
  cp_cv_quals cv_quals = TYPE_UNQUALIFIED;

  while (1)
    {
      cp_token *token;
      cp_cv_quals cv_qualifier;


      token = cp_lexer_peek_token (parser->lexer);

      switch (token->keyword)
 {
 case 130:
   cv_qualifier = TYPE_QUAL_CONST;
   break;

 case 128:
   cv_qualifier = TYPE_QUAL_VOLATILE;
   break;

 case 129:
   cv_qualifier = TYPE_QUAL_RESTRICT;
   break;

 default:
   cv_qualifier = TYPE_UNQUALIFIED;
   break;
 }

      if (!cv_qualifier)
 break;

      if (cv_quals & cv_qualifier)
 {
   error ("duplicate cv-qualifier");
   cp_lexer_purge_token (parser->lexer);
 }
      else
 {
   cp_lexer_consume_token (parser->lexer);
   cv_quals |= cv_qualifier;
 }
    }

  return cv_quals;
}
