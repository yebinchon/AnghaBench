
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int (* undef ) (TYPE_2__*,int ,TYPE_3__*) ;} ;
struct TYPE_17__ {int directive_line; TYPE_1__ cb; } ;
typedef TYPE_2__ cpp_reader ;
struct TYPE_18__ {scalar_t__ type; int flags; } ;
typedef TYPE_3__ cpp_hashnode ;


 int CPP_DL_WARNING ;
 scalar_t__ CPP_OPTION (TYPE_2__*,int ) ;
 int NODE_NAME (TYPE_3__*) ;
 int NODE_WARN ;
 scalar_t__ NT_MACRO ;
 int _cpp_free_definition (TYPE_3__*) ;
 int _cpp_warn_if_unused_macro (TYPE_2__*,TYPE_3__*,int *) ;
 int check_eol (TYPE_2__*) ;
 int cpp_error (TYPE_2__*,int ,char*,int ) ;
 TYPE_3__* lex_macro_node (TYPE_2__*) ;
 int stub1 (TYPE_2__*,int ,TYPE_3__*) ;
 int warn_unused_macros ;

__attribute__((used)) static void
do_undef (cpp_reader *pfile)
{
  cpp_hashnode *node = lex_macro_node (pfile);

  if (node)
    {
      if (pfile->cb.undef)
 pfile->cb.undef (pfile, pfile->directive_line, node);



      if (node->type == NT_MACRO)
 {
   if (node->flags & NODE_WARN)
     cpp_error (pfile, CPP_DL_WARNING,
         "undefining \"%s\"", NODE_NAME (node));

   if (CPP_OPTION (pfile, warn_unused_macros))
     _cpp_warn_if_unused_macro (pfile, node, ((void*)0));

   _cpp_free_definition (node);
 }
    }

  check_eol (pfile);
}
