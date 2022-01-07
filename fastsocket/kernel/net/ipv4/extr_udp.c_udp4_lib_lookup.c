
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct net {int dummy; } ;
typedef int __be32 ;
typedef int __be16 ;


 struct sock* __udp4_lib_lookup (struct net*,int ,int ,int ,int ,int,int *) ;
 int udp_table ;

struct sock *udp4_lib_lookup(struct net *net, __be32 saddr, __be16 sport,
        __be32 daddr, __be16 dport, int dif)
{
 return __udp4_lib_lookup(net, saddr, sport, daddr, dport, dif, &udp_table);
}
