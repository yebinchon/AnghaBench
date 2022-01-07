
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uncond ;
struct ip6t_ip6 {int dummy; } ;


 scalar_t__ memcmp (struct ip6t_ip6 const*,struct ip6t_ip6 const*,int) ;

__attribute__((used)) static inline bool unconditional(const struct ip6t_ip6 *ipv6)
{
 static const struct ip6t_ip6 uncond;

 return memcmp(ipv6, &uncond, sizeof(uncond)) == 0;
}
