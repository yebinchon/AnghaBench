
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int etree_type ;
typedef int bfd_vma ;
struct TYPE_3__ {int value; scalar_t__ valid_p; } ;
struct TYPE_4__ {scalar_t__ phase; TYPE_1__ result; } ;


 int _ (char*) ;
 int einfo (int ,char*) ;
 int exp_fold_tree_no_dot (int *) ;
 TYPE_2__ expld ;
 scalar_t__ lang_mark_phase_enum ;

bfd_vma
exp_get_vma (etree_type *tree, bfd_vma def, char *name)
{
  if (tree != ((void*)0))
    {
      exp_fold_tree_no_dot (tree);
      if (expld.result.valid_p)
 return expld.result.value;
      else if (name != ((void*)0) && expld.phase != lang_mark_phase_enum)
 einfo (_("%F%S nonconstant expression for %s\n"), name);
    }
  return def;
}
