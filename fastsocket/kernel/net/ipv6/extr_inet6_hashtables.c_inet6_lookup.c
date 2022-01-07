
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct net {int dummy; } ;
struct inet_hashinfo {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef int __be16 ;


 struct sock* __inet6_lookup (struct net*,struct inet_hashinfo*,struct in6_addr const*,int const,struct in6_addr const*,int ,int const) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int ntohs (int const) ;

struct sock *inet6_lookup(struct net *net, struct inet_hashinfo *hashinfo,
     const struct in6_addr *saddr, const __be16 sport,
     const struct in6_addr *daddr, const __be16 dport,
     const int dif)
{
 struct sock *sk;

 local_bh_disable();
 sk = __inet6_lookup(net, hashinfo, saddr, sport, daddr, ntohs(dport), dif);
 local_bh_enable();

 return sk;
}
