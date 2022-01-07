
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef int __be16 ;


 struct sock* __udp6_lib_lookup (struct net*,struct in6_addr const*,int ,struct in6_addr const*,int ,int,int *) ;
 int udp_table ;

struct sock *udp6_lib_lookup(struct net *net, const struct in6_addr *saddr, __be16 sport,
        const struct in6_addr *daddr, __be16 dport, int dif)
{
 return __udp6_lib_lookup(net, saddr, sport, daddr, dport, dif, &udp_table);
}
