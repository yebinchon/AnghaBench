
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct section {scalar_t__ type; scalar_t__ link; scalar_t__ sz; int scn; } ;
struct elfdump {size_t shnum; struct section* sl; } ;
struct TYPE_3__ {scalar_t__ d_size; int * d_buf; } ;
typedef TYPE_1__ Elf_Data ;


 scalar_t__ SHT_SUNW_versym ;
 int assert (int) ;
 int elf_errmsg (int) ;
 int elf_errno () ;
 TYPE_1__* elf_getdata (int ,int *) ;
 int get_ent_count (struct section*,int*) ;
 int warnx (char*,int ) ;

__attribute__((used)) static void
get_versym(struct elfdump *ed, int i, uint16_t **vs, int *nvs)
{
 struct section *s;
 Elf_Data *data;
 size_t j;
 int elferr;

 s = ((void*)0);
 for (j = 0; j < ed->shnum; j++) {
  s = &ed->sl[j];
  if (s->type == SHT_SUNW_versym && s->link == (uint32_t)i)
   break;
 }
 if (j >= ed->shnum) {
  *vs = ((void*)0);
  return;
 }
 (void) elf_errno();
 if ((data = elf_getdata(s->scn, ((void*)0))) == ((void*)0)) {
  elferr = elf_errno();
  if (elferr != 0)
   warnx("elf_getdata failed: %s", elf_errmsg(elferr));
  *vs = ((void*)0);
  return;
 }

 *vs = data->d_buf;
 assert(data->d_size == s->sz);
 if (!get_ent_count(s, nvs))
  *nvs = 0;
}
