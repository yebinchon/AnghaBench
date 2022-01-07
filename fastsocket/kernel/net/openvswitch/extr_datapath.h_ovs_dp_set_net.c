
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct datapath {int net; } ;


 int write_pnet (int *,struct net*) ;

__attribute__((used)) static inline void ovs_dp_set_net(struct datapath *dp, struct net *net)
{
 write_pnet(&dp->net, net);
}
