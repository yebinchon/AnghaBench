
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbmix_name_map {int id; int control; } ;
struct mixer_build {struct usbmix_name_map* map; } ;



__attribute__((used)) static const struct usbmix_name_map *
find_map(struct mixer_build *state, int unitid, int control)
{
 const struct usbmix_name_map *p = state->map;

 if (!p)
  return ((void*)0);

 for (p = state->map; p->id; p++) {
  if (p->id == unitid &&
      (!control || !p->control || control == p->control))
   return p;
 }
 return ((void*)0);
}
