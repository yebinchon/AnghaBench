
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ip_set {struct bitmap_ip* data; } ;
struct bitmap_ip {int members; } ;


 int test_bit (int ,int ) ;

__attribute__((used)) static int
bitmap_ip_test(struct ip_set *set, void *value, u32 timeout, u32 flags)
{
 const struct bitmap_ip *map = set->data;
 u16 id = *(u16 *)value;

 return !!test_bit(id, map->members);
}
