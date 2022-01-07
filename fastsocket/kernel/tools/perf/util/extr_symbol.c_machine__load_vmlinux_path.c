
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbol_filter_t ;
struct map {int dso; } ;
struct machine {struct map** vmlinux_maps; } ;
typedef enum map_type { ____Placeholder_map_type } map_type ;


 int dso__load_vmlinux_path (int ,struct map*,int ) ;
 int dso__set_loaded (int ,int) ;
 int map__reloc_vmlinux (struct map*) ;

int machine__load_vmlinux_path(struct machine *machine, enum map_type type,
          symbol_filter_t filter)
{
 struct map *map = machine->vmlinux_maps[type];
 int ret = dso__load_vmlinux_path(map->dso, map, filter);

 if (ret > 0) {
  dso__set_loaded(map->dso, type);
  map__reloc_vmlinux(map);
 }

 return ret;
}
