
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbol_filter_t ;
struct map {int dso; } ;
struct machine {int kmaps; struct map** vmlinux_maps; } ;
typedef enum map_type { ____Placeholder_map_type } map_type ;


 int __map_groups__fixup_end (int *,int) ;
 int dso__load_kallsyms (int ,char const*,struct map*,int ) ;
 int dso__set_loaded (int ,int) ;

int machine__load_kallsyms(struct machine *machine, const char *filename,
      enum map_type type, symbol_filter_t filter)
{
 struct map *map = machine->vmlinux_maps[type];
 int ret = dso__load_kallsyms(map->dso, filename, map, filter);

 if (ret > 0) {
  dso__set_loaded(map->dso, type);





  __map_groups__fixup_end(&machine->kmaps, type);
 }

 return ret;
}
