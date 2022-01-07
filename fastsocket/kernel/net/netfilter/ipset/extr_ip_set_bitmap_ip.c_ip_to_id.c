
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bitmap_ip {int first_ip; int hosts; int netmask; } ;


 int ip_set_hostmask (int ) ;

__attribute__((used)) static inline u32
ip_to_id(const struct bitmap_ip *m, u32 ip)
{
 return ((ip & ip_set_hostmask(m->netmask)) - m->first_ip)/m->hosts;
}
