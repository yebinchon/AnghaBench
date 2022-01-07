
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; int flags; } ;
typedef TYPE_1__ cpp_token ;
typedef int cpp_reader ;
typedef int FILE ;


 scalar_t__ CPP_EOF ;
 int PREV_WHITE ;
 TYPE_1__* cpp_get_token (int *) ;
 int cpp_output_token (TYPE_1__ const*,int *) ;
 int putc (char,int *) ;

void
cpp_output_line (cpp_reader *pfile, FILE *fp)
{
  const cpp_token *token;

  token = cpp_get_token (pfile);
  while (token->type != CPP_EOF)
    {
      cpp_output_token (token, fp);
      token = cpp_get_token (pfile);
      if (token->flags & PREV_WHITE)
 putc (' ', fp);
    }

  putc ('\n', fp);
}
