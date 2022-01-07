
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* directive; } ;
typedef TYPE_2__ cpp_reader ;
struct TYPE_9__ {scalar_t__ type; } ;
struct TYPE_7__ {int name; } ;


 int CPP_DL_PEDWARN ;
 scalar_t__ CPP_EOF ;
 int SEEN_EOL () ;
 TYPE_5__* _cpp_lex_token (TYPE_2__*) ;
 int cpp_error (TYPE_2__*,int ,char*,int ) ;

__attribute__((used)) static void
check_eol (cpp_reader *pfile)
{
  if (! SEEN_EOL () && _cpp_lex_token (pfile)->type != CPP_EOF)
    cpp_error (pfile, CPP_DL_PEDWARN, "extra tokens at end of #%s directive",
        pfile->directive->name);
}
