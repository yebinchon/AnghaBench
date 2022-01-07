
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_9__ ;
typedef struct TYPE_37__ TYPE_8__ ;
typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;


struct TYPE_33__ {unsigned int count; TYPE_5__ const** first; } ;
typedef TYPE_4__ macro_arg ;
struct TYPE_34__ {scalar_t__ type; int flags; } ;
typedef TYPE_5__ cpp_token ;
struct TYPE_32__ {scalar_t__ in_directive; } ;
struct TYPE_35__ {TYPE_3__ state; TYPE_2__* context; TYPE_5__ const eof; } ;
typedef TYPE_6__ cpp_reader ;
struct TYPE_36__ {int paramc; scalar_t__ variadic; } ;
typedef TYPE_7__ cpp_macro ;
struct TYPE_30__ {TYPE_7__* macro; } ;
struct TYPE_37__ {TYPE_1__ value; } ;
typedef TYPE_8__ cpp_hashnode ;
struct TYPE_38__ {unsigned char* cur; unsigned char* limit; scalar_t__ base; } ;
typedef TYPE_9__ _cpp_buff ;
struct TYPE_31__ {scalar_t__ prev; } ;


 int BOL ;
 scalar_t__ CPP_CLOSE_PAREN ;
 scalar_t__ CPP_COMMA ;
 int CPP_DL_ERROR ;
 scalar_t__ CPP_EOF ;
 scalar_t__ CPP_HASH ;
 scalar_t__ CPP_OPEN_PAREN ;
 int CPP_OPTION (TYPE_6__*,int ) ;
 scalar_t__ CPP_PADDING ;
 int NODE_NAME (TYPE_8__ const*) ;
 TYPE_9__* _cpp_append_extend_buff (TYPE_6__*,TYPE_9__*,int) ;
 scalar_t__ _cpp_arguments_ok (TYPE_6__*,TYPE_7__*,TYPE_8__ const*,unsigned int) ;
 int _cpp_backup_tokens (TYPE_6__*,int) ;
 TYPE_9__* _cpp_get_buff (TYPE_6__*,unsigned int) ;
 int _cpp_release_buff (TYPE_6__*,TYPE_9__*) ;
 int cpp_error (TYPE_6__*,int ,char*,int ) ;
 TYPE_5__* cpp_get_token (TYPE_6__*) ;
 int memset (TYPE_4__*,int ,unsigned int) ;
 int std ;

__attribute__((used)) static _cpp_buff *
collect_args (cpp_reader *pfile, const cpp_hashnode *node)
{
  _cpp_buff *buff, *base_buff;
  cpp_macro *macro;
  macro_arg *args, *arg;
  const cpp_token *token;
  unsigned int argc;

  macro = node->value.macro;
  if (macro->paramc)
    argc = macro->paramc;
  else
    argc = 1;
  buff = _cpp_get_buff (pfile, argc * (50 * sizeof (cpp_token *)
           + sizeof (macro_arg)));
  base_buff = buff;
  args = (macro_arg *) buff->base;
  memset (args, 0, argc * sizeof (macro_arg));
  buff->cur = (unsigned char *) &args[argc];
  arg = args, argc = 0;




  do
    {
      unsigned int paren_depth = 0;
      unsigned int ntokens = 0;

      argc++;
      arg->first = (const cpp_token **) buff->cur;

      for (;;)
 {

   if ((unsigned char *) &arg->first[ntokens + 2] > buff->limit)
     {
       buff = _cpp_append_extend_buff (pfile, buff,
           1000 * sizeof (cpp_token *));
       arg->first = (const cpp_token **) buff->cur;
     }

   token = cpp_get_token (pfile);

   if (token->type == CPP_PADDING)
     {

       if (ntokens == 0)
  continue;
     }
   else if (token->type == CPP_OPEN_PAREN)
     paren_depth++;
   else if (token->type == CPP_CLOSE_PAREN)
     {
       if (paren_depth-- == 0)
  break;
     }
   else if (token->type == CPP_COMMA)
     {


       if (paren_depth == 0
    && ! (macro->variadic && argc == macro->paramc))
  break;
     }
   else if (token->type == CPP_EOF
     || (token->type == CPP_HASH && token->flags & BOL))
     break;

   arg->first[ntokens++] = token;
 }


      while (ntokens > 0 && arg->first[ntokens - 1]->type == CPP_PADDING)
 ntokens--;

      arg->count = ntokens;
      arg->first[ntokens] = &pfile->eof;



      if (argc <= macro->paramc)
 {
   buff->cur = (unsigned char *) &arg->first[ntokens + 1];
   if (argc != macro->paramc)
     arg++;
 }
    }
  while (token->type != CPP_CLOSE_PAREN && token->type != CPP_EOF);

  if (token->type == CPP_EOF)
    {




      if (pfile->context->prev || pfile->state.in_directive)
 _cpp_backup_tokens (pfile, 1);
      cpp_error (pfile, CPP_DL_ERROR,
   "unterminated argument list invoking macro \"%s\"",
   NODE_NAME (node));
    }
  else
    {

      if (argc == 1 && macro->paramc == 0 && args[0].count == 0)
 argc = 0;
      if (_cpp_arguments_ok (pfile, macro, node, argc))
 {







   if (macro->variadic && (argc < macro->paramc
      || (argc == 1 && args[0].count == 0
          && !CPP_OPTION (pfile, std))))
     args[macro->paramc - 1].first = ((void*)0);
   return base_buff;
 }
    }


  _cpp_release_buff (pfile, base_buff);
  return ((void*)0);
}
