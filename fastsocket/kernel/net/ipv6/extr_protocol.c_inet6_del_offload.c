
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_offload {int dummy; } ;


 int MAX_INET_PROTOS ;
 int inet6_offload_lock ;
 struct net_offload const** inet6_offloads ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int synchronize_net () ;

int inet6_del_offload(const struct net_offload *prot, unsigned char protocol)
{
 int ret, hash = protocol & (MAX_INET_PROTOS - 1);

 spin_lock_bh(&inet6_offload_lock);

 if (inet6_offloads[hash] != prot) {
  ret = -1;
 } else {
  inet6_offloads[hash] = ((void*)0);
  ret = 0;
 }

 spin_unlock_bh(&inet6_offload_lock);

 synchronize_net();

 return ret;
}
