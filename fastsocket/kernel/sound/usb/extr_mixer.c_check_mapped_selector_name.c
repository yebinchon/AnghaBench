
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbmix_selector_map {int id; int count; int * names; } ;
struct mixer_build {struct usbmix_selector_map* selector_map; } ;


 int strlcpy (char*,int ,int) ;

__attribute__((used)) static int check_mapped_selector_name(struct mixer_build *state, int unitid,
          int index, char *buf, int buflen)
{
 const struct usbmix_selector_map *p;

 if (! state->selector_map)
  return 0;
 for (p = state->selector_map; p->id; p++) {
  if (p->id == unitid && index < p->count)
   return strlcpy(buf, p->names[index], buflen);
 }
 return 0;
}
