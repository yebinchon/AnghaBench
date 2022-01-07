
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int value; } ;
struct TYPE_8__ {int keyword; TYPE_1__ u; int location; int type; } ;
typedef TYPE_2__ cp_token ;
struct TYPE_9__ {TYPE_2__* last_token; TYPE_2__* next_token; } ;
typedef TYPE_3__ cp_lexer ;


 int CPP_PURGED ;
 int NULL_TREE ;
 int RID_MAX ;
 int UNKNOWN_LOCATION ;
 TYPE_2__ eof_token ;
 int gcc_assert (int) ;

__attribute__((used)) static void
cp_lexer_purge_tokens_after (cp_lexer *lexer, cp_token *tok)
{
  cp_token *peek = lexer->next_token;

  if (peek == &eof_token)
    peek = lexer->last_token;

  gcc_assert (tok < peek);

  for ( tok += 1; tok != peek; tok += 1)
    {
      tok->type = CPP_PURGED;
      tok->location = UNKNOWN_LOCATION;
      tok->u.value = NULL_TREE;
      tok->keyword = RID_MAX;
    }
}
