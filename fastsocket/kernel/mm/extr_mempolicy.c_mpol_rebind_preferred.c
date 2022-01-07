
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cpuset_mems_allowed; int user_nodemask; } ;
struct TYPE_3__ {int preferred_node; } ;
struct mempolicy {int flags; TYPE_2__ w; TYPE_1__ v; } ;
typedef int nodemask_t ;
typedef enum mpol_rebind_step { ____Placeholder_mpol_rebind_step } mpol_rebind_step ;


 int MPOL_F_LOCAL ;
 int MPOL_F_RELATIVE_NODES ;
 int MPOL_F_STATIC_NODES ;
 void* first_node (int ) ;
 int mpol_relative_nodemask (int *,int *,int const*) ;
 scalar_t__ node_isset (int,int const) ;
 int node_remap (int,int ,int const) ;

__attribute__((used)) static void mpol_rebind_preferred(struct mempolicy *pol,
      const nodemask_t *nodes,
      enum mpol_rebind_step step)
{
 nodemask_t tmp;

 if (pol->flags & MPOL_F_STATIC_NODES) {
  int node = first_node(pol->w.user_nodemask);

  if (node_isset(node, *nodes)) {
   pol->v.preferred_node = node;
   pol->flags &= ~MPOL_F_LOCAL;
  } else
   pol->flags |= MPOL_F_LOCAL;
 } else if (pol->flags & MPOL_F_RELATIVE_NODES) {
  mpol_relative_nodemask(&tmp, &pol->w.user_nodemask, nodes);
  pol->v.preferred_node = first_node(tmp);
 } else if (!(pol->flags & MPOL_F_LOCAL)) {
  pol->v.preferred_node = node_remap(pol->v.preferred_node,
         pol->w.cpuset_mems_allowed,
         *nodes);
  pol->w.cpuset_mems_allowed = *nodes;
 }
}
