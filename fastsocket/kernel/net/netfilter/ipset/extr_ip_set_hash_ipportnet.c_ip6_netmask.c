
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union nf_inet_addr {int * ip6; } ;
typedef int u8 ;


 int * ip_set_netmask6 (int ) ;

__attribute__((used)) static inline void
ip6_netmask(union nf_inet_addr *ip, u8 prefix)
{
 ip->ip6[0] &= ip_set_netmask6(prefix)[0];
 ip->ip6[1] &= ip_set_netmask6(prefix)[1];
 ip->ip6[2] &= ip_set_netmask6(prefix)[2];
 ip->ip6[3] &= ip_set_netmask6(prefix)[3];
}
