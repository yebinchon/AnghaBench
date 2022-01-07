
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int (* define ) (TYPE_3__*,int ,int *) ;} ;
struct TYPE_9__ {int save_comments; } ;
struct TYPE_11__ {int directive_line; TYPE_2__ cb; TYPE_1__ state; } ;
typedef TYPE_3__ cpp_reader ;
typedef int cpp_hashnode ;


 int CPP_OPTION (TYPE_3__*,int ) ;
 scalar_t__ _cpp_create_definition (TYPE_3__*,int *) ;
 int discard_comments_in_macro_exp ;
 int * lex_macro_node (TYPE_3__*) ;
 int stub1 (TYPE_3__*,int ,int *) ;

__attribute__((used)) static void
do_define (cpp_reader *pfile)
{
  cpp_hashnode *node = lex_macro_node (pfile);

  if (node)
    {


      pfile->state.save_comments =
 ! CPP_OPTION (pfile, discard_comments_in_macro_exp);

      if (_cpp_create_definition (pfile, node))
 if (pfile->cb.define)
   pfile->cb.define (pfile, pfile->directive_line, node);
    }
}
