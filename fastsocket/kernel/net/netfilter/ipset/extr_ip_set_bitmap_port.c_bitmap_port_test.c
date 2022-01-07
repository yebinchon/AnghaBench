
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ip_set {struct bitmap_port* data; } ;
struct bitmap_port {int members; } ;


 int test_bit (int ,int ) ;

__attribute__((used)) static int
bitmap_port_test(struct ip_set *set, void *value, u32 timeout, u32 flags)
{
 const struct bitmap_port *map = set->data;
 u16 id = *(u16 *)value;

 return !!test_bit(id, map->members);
}
