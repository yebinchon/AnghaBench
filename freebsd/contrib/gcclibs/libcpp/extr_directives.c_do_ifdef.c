
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int skipping; } ;
struct TYPE_11__ {TYPE_1__ state; } ;
typedef TYPE_2__ cpp_reader ;
struct TYPE_12__ {scalar_t__ type; } ;
typedef TYPE_3__ cpp_hashnode ;


 scalar_t__ NT_MACRO ;
 int T_IFDEF ;
 int _cpp_mark_macro_used (TYPE_3__ const*) ;
 int check_eol (TYPE_2__*) ;
 TYPE_3__* lex_macro_node (TYPE_2__*) ;
 int push_conditional (TYPE_2__*,int,int ,int ) ;

__attribute__((used)) static void
do_ifdef (cpp_reader *pfile)
{
  int skip = 1;

  if (! pfile->state.skipping)
    {
      const cpp_hashnode *node = lex_macro_node (pfile);

      if (node)
 {
   skip = node->type != NT_MACRO;
   _cpp_mark_macro_used (node);
   check_eol (pfile);
 }
    }

  push_conditional (pfile, skip, T_IFDEF, 0);
}
