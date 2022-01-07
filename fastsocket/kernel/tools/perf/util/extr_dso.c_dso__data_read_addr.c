
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct map {int (* map_ip ) (struct map*,int ) ;} ;
struct machine {int dummy; } ;
struct dso {int dummy; } ;
typedef int ssize_t ;


 int dso__data_read_offset (struct dso*,struct machine*,int ,int *,int ) ;
 int stub1 (struct map*,int ) ;

ssize_t dso__data_read_addr(struct dso *dso, struct map *map,
       struct machine *machine, u64 addr,
       u8 *data, ssize_t size)
{
 u64 offset = map->map_ip(map, addr);
 return dso__data_read_offset(dso, machine, offset, data, size);
}
