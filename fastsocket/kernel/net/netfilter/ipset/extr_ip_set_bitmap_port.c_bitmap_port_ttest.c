
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t u16 ;
struct ip_set {struct bitmap_port* data; } ;
struct bitmap_port {unsigned long* members; } ;


 int ip_set_timeout_test (unsigned long const) ;

__attribute__((used)) static int
bitmap_port_ttest(struct ip_set *set, void *value, u32 timeout, u32 flags)
{
 const struct bitmap_port *map = set->data;
 const unsigned long *members = map->members;
 u16 id = *(u16 *)value;

 return ip_set_timeout_test(members[id]);
}
