
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uncond ;
struct arpt_arp {int dummy; } ;


 scalar_t__ memcmp (struct arpt_arp const*,struct arpt_arp const*,int) ;

__attribute__((used)) static inline bool unconditional(const struct arpt_arp *arp)
{
 static const struct arpt_arp uncond;

 return memcmp(arp, &uncond, sizeof(uncond)) == 0;
}
