
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int rhs; int lhs; int cond; } ;
struct TYPE_8__ {TYPE_2__ trinary; } ;
typedef TYPE_3__ etree_type ;
struct TYPE_6__ {scalar_t__ value; scalar_t__ valid_p; } ;
struct TYPE_9__ {TYPE_1__ result; } ;


 int exp_fold_tree_1 (int ) ;
 TYPE_5__ expld ;

__attribute__((used)) static void
fold_trinary (etree_type *tree)
{
  exp_fold_tree_1 (tree->trinary.cond);
  if (expld.result.valid_p)
    exp_fold_tree_1 (expld.result.value
       ? tree->trinary.lhs
       : tree->trinary.rhs);
}
