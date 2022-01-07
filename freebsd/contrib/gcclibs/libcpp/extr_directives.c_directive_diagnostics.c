
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ origin; int name; } ;
typedef TYPE_2__ directive ;
struct TYPE_10__ {int skipping; } ;
struct TYPE_12__ {TYPE_1__ state; } ;
typedef TYPE_3__ cpp_reader ;


 int CPP_DL_PEDWARN ;
 int CPP_DL_WARNING ;
 scalar_t__ CPP_PEDANTIC (TYPE_3__*) ;
 scalar_t__ CPP_WTRADITIONAL (TYPE_3__*) ;
 scalar_t__ EXTENSION ;
 scalar_t__ KANDR ;
 size_t T_ELIF ;
 int cpp_error (TYPE_3__*,int ,char*,...) ;
 TYPE_2__ const* dtable ;

__attribute__((used)) static void
directive_diagnostics (cpp_reader *pfile, const directive *dir, int indented)
{

  if (CPP_PEDANTIC (pfile)
      && ! pfile->state.skipping
      && dir->origin == EXTENSION)
    cpp_error (pfile, CPP_DL_PEDWARN, "#%s is a GCC extension", dir->name);







  if (CPP_WTRADITIONAL (pfile))
    {
      if (dir == &dtable[T_ELIF])
 cpp_error (pfile, CPP_DL_WARNING,
     "suggest not using #elif in traditional C");
      else if (indented && dir->origin == KANDR)
 cpp_error (pfile, CPP_DL_WARNING,
     "traditional C ignores #%s with the # indented",
     dir->name);
      else if (!indented && dir->origin != KANDR)
 cpp_error (pfile, CPP_DL_WARNING,
     "suggest hiding #%s from traditional C with an indented #",
     dir->name);
    }
}
