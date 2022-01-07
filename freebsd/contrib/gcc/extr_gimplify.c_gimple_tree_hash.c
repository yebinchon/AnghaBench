
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
typedef int hashval_t ;
struct TYPE_2__ {int val; } ;
typedef TYPE_1__ elt_t ;


 int iterative_hash_expr (int ,int ) ;

__attribute__((used)) static hashval_t
gimple_tree_hash (const void *p)
{
  tree t = ((const elt_t *) p)->val;
  return iterative_hash_expr (t, 0);
}
