
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_set {struct bitmap_ipmac* data; } ;
struct bitmap_ipmac {int last_ip; int first_ip; int dsize; int members; } ;


 int memset (int ,int ,int) ;

__attribute__((used)) static void
bitmap_ipmac_flush(struct ip_set *set)
{
 struct bitmap_ipmac *map = set->data;

 memset(map->members, 0,
        (map->last_ip - map->first_ip + 1) * map->dsize);
}
