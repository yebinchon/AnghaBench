
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int preds; } ;
struct TYPE_7__ {int decl; } ;
struct TYPE_5__ {int (* missing_noreturn_ok_p ) (int ) ;} ;
struct TYPE_6__ {TYPE_1__ function; } ;


 scalar_t__ EDGE_COUNT (int ) ;
 TYPE_4__* EXIT_BLOCK_PTR ;
 int OPT_Wmissing_noreturn ;
 int TREE_THIS_VOLATILE (int ) ;
 TYPE_3__* cfun ;
 TYPE_2__ lang_hooks ;
 int stub1 (int ) ;
 scalar_t__ warn_missing_noreturn ;
 int warning (int ,char*,int ) ;

__attribute__((used)) static unsigned int
execute_warn_function_noreturn (void)
{
  if (warn_missing_noreturn
      && !TREE_THIS_VOLATILE (cfun->decl)
      && EDGE_COUNT (EXIT_BLOCK_PTR->preds) == 0
      && !lang_hooks.function.missing_noreturn_ok_p (cfun->decl))
    warning (OPT_Wmissing_noreturn, "%Jfunction might be possible candidate "
      "for attribute %<noreturn%>",
      cfun->decl);
  return 0;
}
