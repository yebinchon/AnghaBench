
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct nrv_data {scalar_t__ var; scalar_t__ result; } ;


 scalar_t__ NULL_TREE ;
 scalar_t__ TYPE_P (scalar_t__) ;

__attribute__((used)) static tree
finalize_nrv_r (tree *tp, int *walk_subtrees, void *data)
{
  struct nrv_data *dp = (struct nrv_data *)data;


  if (TYPE_P (*tp))
    *walk_subtrees = 0;


  else if (*tp == dp->var)
    *tp = dp->result;


  return NULL_TREE;
}
