
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct answer {unsigned int count; int * next; TYPE_1__* first; } ;
struct TYPE_9__ {scalar_t__ type; int flags; } ;
typedef TYPE_1__ cpp_token ;
struct TYPE_10__ {int a_buff; } ;
typedef TYPE_2__ cpp_reader ;


 scalar_t__ BUFF_FRONT (int ) ;
 size_t BUFF_ROOM (int ) ;
 scalar_t__ CPP_CLOSE_PAREN ;
 int CPP_DL_ERROR ;
 scalar_t__ CPP_EOF ;
 scalar_t__ CPP_OPEN_PAREN ;
 int PREV_WHITE ;
 int T_IF ;
 int T_UNASSERT ;
 int _cpp_backup_tokens (TYPE_2__*,int) ;
 int _cpp_extend_buff (TYPE_2__*,int *,int) ;
 int cpp_error (TYPE_2__*,int ,char*) ;
 TYPE_1__* cpp_get_token (TYPE_2__*) ;

__attribute__((used)) static int
parse_answer (cpp_reader *pfile, struct answer **answerp, int type)
{
  const cpp_token *paren;
  struct answer *answer;
  unsigned int acount;



  paren = cpp_get_token (pfile);


  if (paren->type != CPP_OPEN_PAREN)
    {


      if (type == T_IF)
 {
   _cpp_backup_tokens (pfile, 1);
   return 0;
 }


      if (type == T_UNASSERT && paren->type == CPP_EOF)
 return 0;

      cpp_error (pfile, CPP_DL_ERROR, "missing '(' after predicate");
      return 1;
    }

  for (acount = 0;; acount++)
    {
      size_t room_needed;
      const cpp_token *token = cpp_get_token (pfile);
      cpp_token *dest;

      if (token->type == CPP_CLOSE_PAREN)
 break;

      if (token->type == CPP_EOF)
 {
   cpp_error (pfile, CPP_DL_ERROR, "missing ')' to complete answer");
   return 1;
 }


      room_needed = (sizeof (struct answer) + acount * sizeof (cpp_token));

      if (BUFF_ROOM (pfile->a_buff) < room_needed)
 _cpp_extend_buff (pfile, &pfile->a_buff, sizeof (struct answer));

      dest = &((struct answer *) BUFF_FRONT (pfile->a_buff))->first[acount];
      *dest = *token;


      if (acount == 0)
 dest->flags &= ~PREV_WHITE;
    }

  if (acount == 0)
    {
      cpp_error (pfile, CPP_DL_ERROR, "predicate's answer is empty");
      return 1;
    }

  answer = (struct answer *) BUFF_FRONT (pfile->a_buff);
  answer->count = acount;
  answer->next = ((void*)0);
  *answerp = answer;

  return 0;
}
