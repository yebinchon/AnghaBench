
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int etree_type ;
struct TYPE_2__ {int section; int * dotp; scalar_t__ dot; } ;


 int bfd_abs_section_ptr ;
 int exp_fold_tree_1 (int *) ;
 TYPE_1__ expld ;

__attribute__((used)) static void
exp_fold_tree_no_dot (etree_type *tree)
{
  expld.dot = 0;
  expld.dotp = ((void*)0);
  expld.section = bfd_abs_section_ptr;
  exp_fold_tree_1 (tree);
}
