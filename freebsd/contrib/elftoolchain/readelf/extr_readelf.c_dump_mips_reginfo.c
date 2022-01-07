
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct section {char* name; int scn; } ;
struct readelf {int dummy; } ;
struct TYPE_3__ {scalar_t__ d_size; int d_buf; } ;
typedef TYPE_1__ Elf_Data ;


 int dump_mips_odk_reginfo (struct readelf*,int ,scalar_t__) ;
 int elf_errmsg (int) ;
 int elf_errno () ;
 TYPE_1__* elf_rawdata (int ,int *) ;
 int get_ent_count (struct section*,int*) ;
 int printf (char*,char*,int) ;
 int warnx (char*,int ) ;

__attribute__((used)) static void
dump_mips_reginfo(struct readelf *re, struct section *s)
{
 Elf_Data *d;
 int elferr, len;

 (void) elf_errno();
 if ((d = elf_rawdata(s->scn, ((void*)0))) == ((void*)0)) {
  elferr = elf_errno();
  if (elferr != 0)
   warnx("elf_rawdata failed: %s",
       elf_errmsg(elferr));
  return;
 }
 if (d->d_size <= 0)
  return;
 if (!get_ent_count(s, &len))
  return;

 printf("\nSection '%s' contains %d entries:\n", s->name, len);
 dump_mips_odk_reginfo(re, d->d_buf, d->d_size);
}
