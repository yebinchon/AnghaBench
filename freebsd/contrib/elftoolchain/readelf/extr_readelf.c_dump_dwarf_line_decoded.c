
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* uintmax_t ;
struct readelf {int dbg; } ;
typedef int Dwarf_Unsigned ;
typedef int Dwarf_Signed ;
typedef int Dwarf_Line ;
typedef int Dwarf_Error ;
typedef int Dwarf_Die ;
typedef scalar_t__ Dwarf_Addr ;


 int DW_AT_comp_dir ;
 int DW_AT_name ;
 int DW_DLV_OK ;
 char* basename (char*) ;
 int dwarf_attrval_string (int ,int ,char const**,int *) ;
 int dwarf_line_srcfileno (int ,int*,int *) ;
 int dwarf_lineaddr (int ,scalar_t__*,int *) ;
 int dwarf_lineno (int ,int*,int *) ;
 int dwarf_next_cu_header (int ,int *,int *,int *,int *,int *,int *) ;
 int dwarf_siblingof (int ,int *,int *,int *) ;
 int dwarf_srcfiles (int ,char***,int*,int *) ;
 int dwarf_srclines (int ,int **,int*,int *) ;
 int printf (char*,...) ;
 int putchar (char) ;

__attribute__((used)) static void
dump_dwarf_line_decoded(struct readelf *re)
{
 Dwarf_Die die;
 Dwarf_Line *linebuf, ln;
 Dwarf_Addr lineaddr;
 Dwarf_Signed linecount, srccount;
 Dwarf_Unsigned lineno, fn;
 Dwarf_Error de;
 const char *dir, *file;
 char **srcfiles;
 int i, ret;

 printf("Decoded dump of debug contents of section .debug_line:\n\n");
 while ((ret = dwarf_next_cu_header(re->dbg, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     ((void*)0), &de)) == DW_DLV_OK) {
  if (dwarf_siblingof(re->dbg, ((void*)0), &die, &de) != DW_DLV_OK)
   continue;
  if (dwarf_attrval_string(die, DW_AT_name, &file, &de) !=
      DW_DLV_OK)
   file = ((void*)0);
  if (dwarf_attrval_string(die, DW_AT_comp_dir, &dir, &de) !=
      DW_DLV_OK)
   dir = ((void*)0);
  printf("CU: ");
  if (dir && file && file[0] != '/')
   printf("%s/", dir);
  if (file)
   printf("%s", file);
  putchar('\n');
  printf("%-37s %11s   %s\n", "Filename", "Line Number",
      "Starting Address");
  if (dwarf_srclines(die, &linebuf, &linecount, &de) != DW_DLV_OK)
   continue;
  if (dwarf_srcfiles(die, &srcfiles, &srccount, &de) != DW_DLV_OK)
   continue;
  for (i = 0; i < linecount; i++) {
   ln = linebuf[i];
   if (dwarf_line_srcfileno(ln, &fn, &de) != DW_DLV_OK)
    continue;
   if (dwarf_lineno(ln, &lineno, &de) != DW_DLV_OK)
    continue;
   if (dwarf_lineaddr(ln, &lineaddr, &de) != DW_DLV_OK)
    continue;
   printf("%-37s %11ju %#18jx\n",
       basename(srcfiles[fn - 1]), (uintmax_t) lineno,
       (uintmax_t) lineaddr);
  }
  putchar('\n');
 }
}
