
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int keyword; } ;
typedef TYPE_1__ cp_token ;
typedef int cp_lexer ;
 TYPE_1__* cp_lexer_peek_token (int *) ;

__attribute__((used)) static bool
cp_lexer_next_token_is_decl_specifier_keyword (cp_lexer *lexer)
{
  cp_token *token;

  token = cp_lexer_peek_token (lexer);
  switch (token->keyword)
    {

    case 150:
    case 139:
    case 136:
    case 144:
    case 140:
    case 134:

    case 145:
    case 147:
    case 135:
    case 131:
    case 133:

    case 148:
    case 128:
    case 149:
    case 138:
    case 142:
    case 141:
    case 137:
    case 130:
    case 143:
    case 146:
    case 129:

    case 151:
    case 132:
      return 1;

    default:
      return 0;
    }
}
