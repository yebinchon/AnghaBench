
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int skipping; } ;
struct TYPE_12__ {TYPE_1__ state; } ;
typedef TYPE_2__ cpp_reader ;
struct TYPE_13__ {scalar_t__ type; } ;
typedef TYPE_3__ cpp_hashnode ;


 scalar_t__ NT_MACRO ;
 int T_IFNDEF ;
 int _cpp_mark_macro_used (TYPE_3__ const*) ;
 int check_eol (TYPE_2__*) ;
 TYPE_3__* lex_macro_node (TYPE_2__*) ;
 int push_conditional (TYPE_2__*,int,int ,TYPE_3__ const*) ;

__attribute__((used)) static void
do_ifndef (cpp_reader *pfile)
{
  int skip = 1;
  const cpp_hashnode *node = 0;

  if (! pfile->state.skipping)
    {
      node = lex_macro_node (pfile);

      if (node)
 {
   skip = node->type == NT_MACRO;
   _cpp_mark_macro_used (node);
   check_eol (pfile);
 }
    }

  push_conditional (pfile, skip, T_IFNDEF, node);
}
