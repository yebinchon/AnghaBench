
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nodes; } ;
struct mempolicy {TYPE_1__ v; } ;
typedef int nodemask_t ;


 int EINVAL ;
 int is_valid_nodemask (int const*) ;

__attribute__((used)) static int mpol_new_bind(struct mempolicy *pol, const nodemask_t *nodes)
{
 if (!is_valid_nodemask(nodes))
  return -EINVAL;
 pol->v.nodes = *nodes;
 return 0;
}
