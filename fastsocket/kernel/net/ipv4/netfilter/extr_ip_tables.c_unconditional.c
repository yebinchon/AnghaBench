
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uncond ;
struct ipt_ip {int dummy; } ;


 scalar_t__ memcmp (struct ipt_ip const*,struct ipt_ip const*,int) ;

__attribute__((used)) static inline bool unconditional(const struct ipt_ip *ip)
{
 static const struct ipt_ip uncond;

 return memcmp(ip, &uncond, sizeof(uncond)) == 0;

}
