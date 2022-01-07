
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int policy_idx_hmask; } ;
struct net {TYPE_1__ xfrm; } ;


 unsigned int __idx_hash (int ,int ) ;

__attribute__((used)) static inline unsigned int idx_hash(struct net *net, u32 index)
{
 return __idx_hash(index, net->xfrm.policy_idx_hmask);
}
