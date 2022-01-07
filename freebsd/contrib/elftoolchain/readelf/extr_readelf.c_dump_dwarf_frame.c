
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section {int * name; } ;
struct readelf {size_t shnum; struct section* sl; int dbg; } ;


 int DW_FRAME_CFA_COL ;
 int dump_dwarf_frame_section (struct readelf*,struct section*,int) ;
 int dwarf_set_frame_cfa_value (int ,int ) ;
 int strcmp (int *,char*) ;

__attribute__((used)) static void
dump_dwarf_frame(struct readelf *re, int alt)
{
 struct section *s;
 int i;

 (void) dwarf_set_frame_cfa_value(re->dbg, DW_FRAME_CFA_COL);

 for (i = 0; (size_t) i < re->shnum; i++) {
  s = &re->sl[i];
  if (s->name != ((void*)0) && (!strcmp(s->name, ".debug_frame") ||
      !strcmp(s->name, ".eh_frame")))
   dump_dwarf_frame_section(re, s, alt);
 }
}
