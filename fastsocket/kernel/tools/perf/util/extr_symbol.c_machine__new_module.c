
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct map {int dummy; } ;
struct machine {int kmaps; int kernel_dsos; } ;
struct dso {int symtab_type; } ;


 int DSO_BINARY_TYPE__GUEST_KMODULE ;
 int DSO_BINARY_TYPE__SYSTEM_PATH_KMODULE ;
 int MAP__FUNCTION ;
 struct dso* __dsos__findnew (int *,char const*) ;
 scalar_t__ machine__is_host (struct machine*) ;
 struct map* map__new2 (int ,struct dso*,int ) ;
 int map_groups__insert (int *,struct map*) ;

struct map *machine__new_module(struct machine *machine, u64 start,
    const char *filename)
{
 struct map *map;
 struct dso *dso = __dsos__findnew(&machine->kernel_dsos, filename);

 if (dso == ((void*)0))
  return ((void*)0);

 map = map__new2(start, dso, MAP__FUNCTION);
 if (map == ((void*)0))
  return ((void*)0);

 if (machine__is_host(machine))
  dso->symtab_type = DSO_BINARY_TYPE__SYSTEM_PATH_KMODULE;
 else
  dso->symtab_type = DSO_BINARY_TYPE__GUEST_KMODULE;
 map_groups__insert(&machine->kmaps, map);
 return map;
}
