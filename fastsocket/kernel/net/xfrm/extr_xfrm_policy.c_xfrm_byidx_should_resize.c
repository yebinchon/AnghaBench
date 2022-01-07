
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int policy_idx_hmask; } ;
struct net {TYPE_1__ xfrm; } ;


 unsigned int xfrm_policy_hashmax ;

__attribute__((used)) static inline int xfrm_byidx_should_resize(struct net *net, int total)
{
 unsigned int hmask = net->xfrm.policy_idx_hmask;

 if ((hmask + 1) < xfrm_policy_hashmax &&
     total > hmask)
  return 1;

 return 0;
}
