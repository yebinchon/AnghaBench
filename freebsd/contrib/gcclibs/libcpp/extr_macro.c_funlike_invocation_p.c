
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int * source; } ;
struct TYPE_14__ {scalar_t__ type; int flags; TYPE_1__ val; } ;
typedef TYPE_3__ cpp_token ;
struct TYPE_13__ {int parsing_args; } ;
struct TYPE_15__ {TYPE_3__ const eof; TYPE_2__ state; } ;
typedef TYPE_4__ cpp_reader ;
typedef int cpp_hashnode ;
typedef int _cpp_buff ;


 scalar_t__ CPP_EOF ;
 scalar_t__ CPP_OPEN_PAREN ;
 scalar_t__ CPP_PADDING ;
 int PREV_WHITE ;
 int _cpp_backup_tokens (TYPE_4__*,int) ;
 int _cpp_push_token_context (TYPE_4__*,int *,TYPE_3__ const*,int) ;
 int * collect_args (TYPE_4__*,int *) ;
 TYPE_3__* cpp_get_token (TYPE_4__*) ;

__attribute__((used)) static _cpp_buff *
funlike_invocation_p (cpp_reader *pfile, cpp_hashnode *node)
{
  const cpp_token *token, *padding = ((void*)0);

  for (;;)
    {
      token = cpp_get_token (pfile);
      if (token->type != CPP_PADDING)
 break;
      if (padding == ((void*)0)
   || (!(padding->flags & PREV_WHITE) && token->val.source == ((void*)0)))
 padding = token;
    }

  if (token->type == CPP_OPEN_PAREN)
    {
      pfile->state.parsing_args = 2;
      return collect_args (pfile, node);
    }



  if (token->type != CPP_EOF || token == &pfile->eof)
    {



      _cpp_backup_tokens (pfile, 1);
      if (padding)
 _cpp_push_token_context (pfile, ((void*)0), padding, 1);
    }

  return ((void*)0);
}
