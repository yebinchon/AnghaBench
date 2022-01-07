
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct symver {int dummy; } ;
struct section {scalar_t__ link; char* name; int scn; } ;
struct readelf {scalar_t__ shnum; int ver_sz; TYPE_5__* ver; struct section* vd_s; } ;
struct TYPE_9__ {char* name; } ;
struct TYPE_8__ {scalar_t__ d_size; int * d_buf; } ;
struct TYPE_7__ {scalar_t__ vda_next; int vda_name; } ;
struct TYPE_6__ {int vd_version; int vd_flags; int vd_ndx; int vd_cnt; int vd_aux; scalar_t__ vd_next; } ;
typedef TYPE_1__ Elf_Verdef ;
typedef TYPE_2__ Elf_Verdaux ;
typedef TYPE_3__ Elf_Data ;


 int SAVE_VERSION_NAME (int,char const*,int) ;
 TYPE_5__* calloc (int,int) ;
 int elf_errmsg (int) ;
 int elf_errno () ;
 TYPE_3__* elf_getdata (int ,int *) ;
 char* get_string (struct readelf*,scalar_t__,int ) ;
 int printf (char*,...) ;
 int warn (char*) ;
 int warnx (char*,int ) ;

__attribute__((used)) static void
dump_verdef(struct readelf *re, int dump)
{
 struct section *s;
 struct symver *nv;
 Elf_Data *d;
 Elf_Verdef *vd;
 Elf_Verdaux *vda;
 uint8_t *buf, *end, *buf2;
 const char *name;
 int elferr, i, j;

 if ((s = re->vd_s) == ((void*)0))
  return;
 if (s->link >= re->shnum)
  return;

 if (re->ver == ((void*)0)) {
  re->ver_sz = 16;
  if ((re->ver = calloc(re->ver_sz, sizeof(*re->ver))) ==
      ((void*)0)) {
   warn("calloc failed");
   return;
  }
  re->ver[0].name = "*local*";
  re->ver[1].name = "*global*";
 }

 if (dump)
  printf("\nVersion definition section (%s):\n", s->name);
 (void) elf_errno();
 if ((d = elf_getdata(s->scn, ((void*)0))) == ((void*)0)) {
  elferr = elf_errno();
  if (elferr != 0)
   warnx("elf_getdata failed: %s", elf_errmsg(elferr));
  return;
 }
 if (d->d_size == 0)
  return;

 buf = d->d_buf;
 end = buf + d->d_size;
 while (buf + sizeof(Elf_Verdef) <= end) {
  vd = (Elf_Verdef *) (uintptr_t) buf;
  if (dump) {
   printf("  0x%4.4lx", (unsigned long)
       (buf - (uint8_t *)d->d_buf));
   printf(" vd_version: %u vd_flags: %d"
       " vd_ndx: %u vd_cnt: %u", vd->vd_version,
       vd->vd_flags, vd->vd_ndx, vd->vd_cnt);
  }
  buf2 = buf + vd->vd_aux;
  j = 0;
  while (buf2 + sizeof(Elf_Verdaux) <= end && j < vd->vd_cnt) {
   vda = (Elf_Verdaux *) (uintptr_t) buf2;
   name = get_string(re, s->link, vda->vda_name);
   if (j == 0) {
    if (dump)
     printf(" vda_name: %s\n", name);
    SAVE_VERSION_NAME((int)vd->vd_ndx, name, 1);
   } else if (dump)
    printf("  0x%4.4lx parent: %s\n",
        (unsigned long) (buf2 -
        (uint8_t *)d->d_buf), name);
   if (vda->vda_next == 0)
    break;
   buf2 += vda->vda_next;
   j++;
  }
  if (vd->vd_next == 0)
   break;
  buf += vd->vd_next;
 }
}
