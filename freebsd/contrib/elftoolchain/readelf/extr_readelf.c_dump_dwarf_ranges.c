
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct readelf {scalar_t__ ec; int dbg; } ;
typedef scalar_t__ Dwarf_Unsigned ;
typedef int Dwarf_Signed ;
typedef int Dwarf_Ranges ;
typedef scalar_t__ Dwarf_Half ;
typedef int Dwarf_Error ;
typedef int * Dwarf_Die ;
typedef int Dwarf_Addr ;


 int DW_AT_low_pc ;
 int DW_DLV_OK ;
 scalar_t__ DW_TAG_compile_unit ;
 scalar_t__ ELFCLASS32 ;
 int dump_dwarf_ranges_foreach (struct readelf*,int *,int ) ;
 int dwarf_attrval_unsigned (int *,int ,scalar_t__*,int *) ;
 int dwarf_errmsg (int ) ;
 int dwarf_get_ranges (int ,int ,int **,int *,scalar_t__*,int *) ;
 int dwarf_next_cu_header (int ,int *,int *,int *,int *,int *,int *) ;
 int dwarf_siblingof (int ,int *,int **,int *) ;
 int dwarf_tag (int *,scalar_t__*,int *) ;
 int printf (char*,...) ;
 int putchar (char) ;
 int warnx (char*,int ) ;

__attribute__((used)) static void
dump_dwarf_ranges(struct readelf *re)
{
 Dwarf_Ranges *ranges;
 Dwarf_Die die;
 Dwarf_Signed cnt;
 Dwarf_Unsigned bytecnt;
 Dwarf_Half tag;
 Dwarf_Error de;
 Dwarf_Unsigned lowpc;
 int ret;

 if (dwarf_get_ranges(re->dbg, 0, &ranges, &cnt, &bytecnt, &de) !=
     DW_DLV_OK)
  return;

 printf("Contents of the .debug_ranges section:\n\n");
 if (re->ec == ELFCLASS32)
  printf("    %-8s %-8s %s\n", "Offset", "Begin", "End");
 else
  printf("    %-8s %-16s %s\n", "Offset", "Begin", "End");

 while ((ret = dwarf_next_cu_header(re->dbg, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     ((void*)0), &de)) == DW_DLV_OK) {
  die = ((void*)0);
  if (dwarf_siblingof(re->dbg, die, &die, &de) != DW_DLV_OK)
   continue;
  if (dwarf_tag(die, &tag, &de) != DW_DLV_OK) {
   warnx("dwarf_tag failed: %s", dwarf_errmsg(de));
   continue;
  }

  lowpc = 0;
  if (tag == DW_TAG_compile_unit) {
   if (dwarf_attrval_unsigned(die, DW_AT_low_pc, &lowpc,
       &de) != DW_DLV_OK)
    lowpc = 0;
  }

  dump_dwarf_ranges_foreach(re, die, (Dwarf_Addr) lowpc);
 }
 putchar('\n');
}
