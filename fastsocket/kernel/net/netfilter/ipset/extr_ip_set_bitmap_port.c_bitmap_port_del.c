
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ip_set {struct bitmap_port* data; } ;
struct bitmap_port {int members; } ;


 int IPSET_ERR_EXIST ;
 int test_and_clear_bit (int ,int ) ;

__attribute__((used)) static int
bitmap_port_del(struct ip_set *set, void *value, u32 timeout, u32 flags)
{
 struct bitmap_port *map = set->data;
 u16 id = *(u16 *)value;

 if (!test_and_clear_bit(id, map->members))
  return -IPSET_ERR_EXIST;

 return 0;
}
