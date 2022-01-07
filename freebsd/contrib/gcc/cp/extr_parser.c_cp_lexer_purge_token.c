
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int value; } ;
struct TYPE_7__ {scalar_t__ type; int keyword; TYPE_1__ u; int location; } ;
typedef TYPE_2__ cp_token ;
struct TYPE_8__ {TYPE_2__* next_token; TYPE_2__* last_token; } ;
typedef TYPE_3__ cp_lexer ;


 scalar_t__ CPP_PURGED ;
 int NULL_TREE ;
 int RID_MAX ;
 int UNKNOWN_LOCATION ;
 TYPE_2__ eof_token ;
 int gcc_assert (int) ;

__attribute__((used)) static void
cp_lexer_purge_token (cp_lexer *lexer)
{
  cp_token *tok = lexer->next_token;

  gcc_assert (tok != &eof_token);
  tok->type = CPP_PURGED;
  tok->location = UNKNOWN_LOCATION;
  tok->u.value = NULL_TREE;
  tok->keyword = RID_MAX;

  do
    {
      tok++;
      if (tok == lexer->last_token)
 {
   tok = (cp_token *)&eof_token;
   break;
 }
    }
  while (tok->type == CPP_PURGED);
  lexer->next_token = tok;
}
