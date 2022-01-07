
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int * s6_addr32; } ;


 int ntohl (int ) ;

__attribute__((used)) static inline int
iprange_ipv6_sub(const struct in6_addr *a, const struct in6_addr *b)
{
 unsigned int i;
 int r;

 for (i = 0; i < 4; ++i) {
  r = ntohl(a->s6_addr32[i]) - ntohl(b->s6_addr32[i]);
  if (r != 0)
   return r;
 }

 return 0;
}
