
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_offload {int dummy; } ;


 int MAX_INET_PROTOS ;
 int inet_offload_lock ;
 struct net_offload const** inet_offloads ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int synchronize_net () ;

int inet_del_offload(const struct net_offload *prot, unsigned char protocol)
{
 int hash, ret;

 hash = protocol & (MAX_INET_PROTOS - 1);

 spin_lock_bh(&inet_offload_lock);
 if (inet_offloads[hash] == prot) {
  inet_offloads[hash] = ((void*)0);
  ret = 0;
 } else {
  ret = -1;
 }
 spin_unlock_bh(&inet_offload_lock);

 synchronize_net();

 return ret;
}
