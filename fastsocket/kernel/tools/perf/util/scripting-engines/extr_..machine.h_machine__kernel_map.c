
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map {int dummy; } ;
struct machine {struct map** vmlinux_maps; } ;
typedef enum map_type { ____Placeholder_map_type } map_type ;



__attribute__((used)) static inline
struct map *machine__kernel_map(struct machine *machine, enum map_type type)
{
 return machine->vmlinux_maps[type];
}
