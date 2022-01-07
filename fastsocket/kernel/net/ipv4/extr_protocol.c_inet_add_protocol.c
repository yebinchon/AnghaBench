
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_protocol {int dummy; } ;


 int MAX_INET_PROTOS ;
 int inet_proto_lock ;
 struct net_protocol const** inet_protos ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int inet_add_protocol(const struct net_protocol *prot, unsigned char protocol)
{
 int hash, ret;

 hash = protocol & (MAX_INET_PROTOS - 1);

 spin_lock_bh(&inet_proto_lock);
 if (inet_protos[hash]) {
  ret = -1;
 } else {
  inet_protos[hash] = prot;
  ret = 0;
 }
 spin_unlock_bh(&inet_proto_lock);

 return ret;
}
