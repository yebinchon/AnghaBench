
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_protocol {int netns_ok; } ;
struct net {int dummy; } ;


 int MAX_INET_PROTOS ;
 int * inet_protos ;
 int init_net ;
 scalar_t__ net_eq (struct net*,int *) ;
 struct net_protocol* rcu_dereference (int ) ;

__attribute__((used)) static inline int inet_netns_ok(struct net *net, int protocol)
{
 int hash;
 const struct net_protocol *ipprot;

 if (net_eq(net, &init_net))
  return 1;

 hash = protocol & (MAX_INET_PROTOS - 1);
 ipprot = rcu_dereference(inet_protos[hash]);

 if (ipprot == ((void*)0))

  return 1;
 return ipprot->netns_ok;
}
