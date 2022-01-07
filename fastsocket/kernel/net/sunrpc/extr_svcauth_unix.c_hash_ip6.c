
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int * s6_addr32; } ;


 int hash_ip (int ) ;

__attribute__((used)) static inline int hash_ip6(struct in6_addr ip)
{
 return (hash_ip(ip.s6_addr32[0]) ^
  hash_ip(ip.s6_addr32[1]) ^
  hash_ip(ip.s6_addr32[2]) ^
  hash_ip(ip.s6_addr32[3]));
}
