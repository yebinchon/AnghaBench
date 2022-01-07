
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_set {struct bitmap_port* data; } ;
struct bitmap_port {int memsize; int members; } ;


 int memset (int ,int ,int ) ;

__attribute__((used)) static void
bitmap_port_flush(struct ip_set *set)
{
 struct bitmap_port *map = set->data;

 memset(map->members, 0, map->memsize);
}
