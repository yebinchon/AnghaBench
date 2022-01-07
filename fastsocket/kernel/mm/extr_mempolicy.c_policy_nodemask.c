
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nodes; } ;
struct mempolicy {scalar_t__ mode; TYPE_1__ v; } ;
typedef int nodemask_t ;
typedef int gfp_t ;


 scalar_t__ MPOL_BIND ;
 scalar_t__ cpuset_nodemask_valid_mems_allowed (int *) ;
 scalar_t__ gfp_zone (int ) ;
 scalar_t__ policy_zone ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static nodemask_t *policy_nodemask(gfp_t gfp, struct mempolicy *policy)
{

 if (unlikely(policy->mode == MPOL_BIND) &&
   gfp_zone(gfp) >= policy_zone &&
   cpuset_nodemask_valid_mems_allowed(&policy->v.nodes))
  return &policy->v.nodes;

 return ((void*)0);
}
