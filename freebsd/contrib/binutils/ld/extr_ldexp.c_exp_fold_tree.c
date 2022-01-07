
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int etree_type ;
typedef int bfd_vma ;
typedef int asection ;
struct TYPE_2__ {int * section; int * dotp; int dot; } ;


 int exp_fold_tree_1 (int *) ;
 TYPE_1__ expld ;

void
exp_fold_tree (etree_type *tree, asection *current_section, bfd_vma *dotp)
{
  expld.dot = *dotp;
  expld.dotp = dotp;
  expld.section = current_section;
  exp_fold_tree_1 (tree);
}
