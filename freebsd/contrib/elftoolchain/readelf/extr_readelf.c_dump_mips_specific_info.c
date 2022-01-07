
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section {scalar_t__ type; int * name; } ;
struct readelf {size_t shnum; struct section* sl; } ;


 scalar_t__ SHT_MIPS_ABIFLAGS ;
 scalar_t__ SHT_MIPS_OPTIONS ;
 scalar_t__ SHT_MIPS_REGINFO ;
 int dump_mips_abiflags (struct readelf*,struct section*) ;
 int dump_mips_options (struct readelf*,struct section*) ;
 int dump_mips_reginfo (struct readelf*,struct section*) ;
 int strcmp (int *,char*) ;

__attribute__((used)) static void
dump_mips_specific_info(struct readelf *re)
{
 struct section *s;
 int i;

 s = ((void*)0);
 for (i = 0; (size_t) i < re->shnum; i++) {
  s = &re->sl[i];
  if (s->name != ((void*)0) && (!strcmp(s->name, ".MIPS.options") ||
      (s->type == SHT_MIPS_OPTIONS))) {
   dump_mips_options(re, s);
  }
 }

 if (s->name != ((void*)0) && (!strcmp(s->name, ".MIPS.abiflags") ||
     (s->type == SHT_MIPS_ABIFLAGS)))
  dump_mips_abiflags(re, s);





 for (i = 0; (size_t) i < re->shnum; i++) {
  s = &re->sl[i];
  if (s->name != ((void*)0) && (!strcmp(s->name, ".reginfo") ||
      (s->type == SHT_MIPS_REGINFO)))
   dump_mips_reginfo(re, s);
 }
}
