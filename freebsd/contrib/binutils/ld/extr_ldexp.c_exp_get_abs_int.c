
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int lineno; } ;
struct TYPE_11__ {TYPE_3__ type; } ;
typedef TYPE_4__ etree_type ;
typedef int bfd_vma ;
struct TYPE_9__ {int value; TYPE_1__* section; scalar_t__ valid_p; } ;
struct TYPE_12__ {scalar_t__ phase; TYPE_2__ result; } ;
struct TYPE_8__ {scalar_t__ vma; } ;


 int _ (char*) ;
 int einfo (int ,char*) ;
 int exp_fold_tree_no_dot (TYPE_4__*) ;
 TYPE_5__ expld ;
 scalar_t__ lang_mark_phase_enum ;
 int lineno ;

bfd_vma
exp_get_abs_int (etree_type *tree, int def, char *name)
{
  if (tree != ((void*)0))
    {
      exp_fold_tree_no_dot (tree);

      if (expld.result.valid_p)
 {
   expld.result.value += expld.result.section->vma;
   return expld.result.value;
 }
      else if (name != ((void*)0) && expld.phase != lang_mark_phase_enum)
 {
   lineno = tree->type.lineno;
   einfo (_("%F%S: nonconstant expression for %s\n"), name);
 }
    }
  return def;
}
