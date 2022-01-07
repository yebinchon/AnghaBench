
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int len; int text; } ;
struct TYPE_10__ {TYPE_1__ str; TYPE_3__ const* source; } ;
struct TYPE_11__ {scalar_t__ type; int flags; TYPE_2__ val; } ;
typedef TYPE_3__ cpp_token ;
typedef int cpp_reader ;
struct TYPE_12__ {int outf; TYPE_3__ const* prev; TYPE_3__ const* source; } ;


 scalar_t__ CPP_COMMENT ;
 scalar_t__ CPP_EOF ;
 scalar_t__ CPP_HASH ;
 scalar_t__ CPP_PADDING ;
 int PREV_WHITE ;
 int account_for_newlines (int ,int ) ;
 scalar_t__ cpp_avoid_paste (int *,TYPE_3__ const*,TYPE_3__ const*) ;
 TYPE_3__* cpp_get_token (int *) ;
 int cpp_output_token (TYPE_3__ const*,int ) ;
 TYPE_4__ print ;
 int putc (char,int ) ;

__attribute__((used)) static void
scan_translation_unit (cpp_reader *pfile)
{
  bool avoid_paste = 0;

  print.source = ((void*)0);
  for (;;)
    {
      const cpp_token *token = cpp_get_token (pfile);

      if (token->type == CPP_PADDING)
 {
   avoid_paste = 1;
   if (print.source == ((void*)0)
       || (!(print.source->flags & PREV_WHITE)
    && token->val.source == ((void*)0)))
     print.source = token->val.source;
   continue;
 }

      if (token->type == CPP_EOF)
 break;


      if (avoid_paste)
 {
   if (print.source == ((void*)0))
     print.source = token;
   if (print.source->flags & PREV_WHITE
       || (print.prev
    && cpp_avoid_paste (pfile, print.prev, token))
       || (print.prev == ((void*)0) && token->type == CPP_HASH))
     putc (' ', print.outf);
 }
      else if (token->flags & PREV_WHITE)
 putc (' ', print.outf);

      avoid_paste = 0;
      print.source = ((void*)0);
      print.prev = token;
      cpp_output_token (token, print.outf);

      if (token->type == CPP_COMMENT)
 account_for_newlines (token->val.str.text, token->val.str.len);
    }
}
