
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cpuset_mems_allowed; } ;
struct mempolicy {int flags; size_t mode; TYPE_1__ w; } ;
typedef int nodemask_t ;
typedef enum mpol_rebind_step { ____Placeholder_mpol_rebind_step } mpol_rebind_step ;
struct TYPE_4__ {int (* rebind ) (struct mempolicy*,int const*,int) ;} ;


 int BUG () ;
 int MPOL_F_REBINDING ;
 int MPOL_REBIND_NSTEP ;
 int MPOL_REBIND_STEP1 ;
 int MPOL_REBIND_STEP2 ;
 TYPE_2__* mpol_ops ;
 int mpol_store_user_nodemask (struct mempolicy*) ;
 scalar_t__ nodes_equal (int ,int const) ;
 int stub1 (struct mempolicy*,int const*,int) ;

__attribute__((used)) static void mpol_rebind_policy(struct mempolicy *pol, const nodemask_t *newmask,
    enum mpol_rebind_step step)
{
 if (!pol)
  return;
 if (!mpol_store_user_nodemask(pol) && step == 0 &&
     nodes_equal(pol->w.cpuset_mems_allowed, *newmask))
  return;

 if (step == MPOL_REBIND_STEP1 && (pol->flags & MPOL_F_REBINDING))
  return;

 if (step == MPOL_REBIND_STEP2 && !(pol->flags & MPOL_F_REBINDING))
  BUG();

 if (step == MPOL_REBIND_STEP1)
  pol->flags |= MPOL_F_REBINDING;
 else if (step == MPOL_REBIND_STEP2)
  pol->flags &= ~MPOL_F_REBINDING;
 else if (step >= MPOL_REBIND_NSTEP)
  BUG();

 mpol_ops[pol->mode].rebind(pol, newmask, step);
}
