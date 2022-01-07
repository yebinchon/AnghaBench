
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct section {scalar_t__ type; int scn; } ;
struct readelf {size_t shnum; int vs_sz; int vs; struct section* vs_s; int * ver; struct section* vn_s; struct section* vd_s; struct section* sl; } ;
struct TYPE_3__ {int d_size; int d_buf; } ;
typedef TYPE_1__ Elf_Data ;
typedef int Elf32_Half ;


 scalar_t__ SHT_SUNW_verdef ;
 scalar_t__ SHT_SUNW_verneed ;
 scalar_t__ SHT_SUNW_versym ;
 int dump_verdef (struct readelf*,int ) ;
 int dump_verneed (struct readelf*,int ) ;
 int elf_errmsg (int) ;
 int elf_errno () ;
 TYPE_1__* elf_getdata (int ,int *) ;
 int warnx (char*,int ) ;

__attribute__((used)) static void
search_ver(struct readelf *re)
{
 struct section *s;
 Elf_Data *d;
 int elferr, i;

 for (i = 0; (size_t) i < re->shnum; i++) {
  s = &re->sl[i];
  if (s->type == SHT_SUNW_versym)
   re->vs_s = s;
  if (s->type == SHT_SUNW_verneed)
   re->vn_s = s;
  if (s->type == SHT_SUNW_verdef)
   re->vd_s = s;
 }
 if (re->vd_s)
  dump_verdef(re, 0);
 if (re->vn_s)
  dump_verneed(re, 0);
 if (re->vs_s && re->ver != ((void*)0)) {
  (void) elf_errno();
  if ((d = elf_getdata(re->vs_s->scn, ((void*)0))) == ((void*)0)) {
   elferr = elf_errno();
   if (elferr != 0)
    warnx("elf_getdata failed: %s",
        elf_errmsg(elferr));
   return;
  }
  if (d->d_size == 0)
   return;
  re->vs = d->d_buf;
  re->vs_sz = d->d_size / sizeof(Elf32_Half);
 }
}
