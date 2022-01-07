
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* edge ;
typedef scalar_t__ basic_block ;
struct TYPE_7__ {scalar_t__ dest; TYPE_1__* src; } ;
struct TYPE_6__ {int flags; } ;


 int BB_DIRTY ;
 scalar_t__ force_nonfallthru_and_redirect (TYPE_2__*,scalar_t__) ;
 scalar_t__ redirect_edge_and_branch (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static basic_block
rtl_redirect_edge_and_branch_force (edge e, basic_block target)
{
  if (redirect_edge_and_branch (e, target)
      || e->dest == target)
    return ((void*)0);



  e->src->flags |= BB_DIRTY;
  return force_nonfallthru_and_redirect (e, target);
}
