
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* context; } ;
typedef TYPE_2__ cpp_reader ;
struct TYPE_9__ {scalar_t__ type; } ;
struct TYPE_7__ {scalar_t__ prev; } ;


 scalar_t__ CPP_EOF ;
 int SEEN_EOL () ;
 TYPE_5__* _cpp_lex_token (TYPE_2__*) ;
 int _cpp_pop_context (TYPE_2__*) ;

__attribute__((used)) static void
skip_rest_of_line (cpp_reader *pfile)
{

  while (pfile->context->prev)
    _cpp_pop_context (pfile);


  if (! SEEN_EOL ())
    while (_cpp_lex_token (pfile)->type != CPP_EOF)
      ;
}
