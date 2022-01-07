
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct find_scope_param {int found; int line; int diff; int die_mem; scalar_t__ function; scalar_t__ file; } ;
typedef int Dwarf_Die ;


 scalar_t__ die_compare_name (int *,scalar_t__) ;
 char* dwarf_decl_file (int *) ;
 int dwarf_decl_line (int *,int*) ;
 int memcpy (int ,int *,int) ;
 scalar_t__ strcmp (scalar_t__,char const*) ;

__attribute__((used)) static int find_best_scope_cb(Dwarf_Die *fn_die, void *data)
{
 struct find_scope_param *fsp = data;
 const char *file;
 int lno;


 if (fsp->file) {
  file = dwarf_decl_file(fn_die);
  if (!file || strcmp(fsp->file, file) != 0)
   return 0;
 }

 if (fsp->function) {
  if (die_compare_name(fn_die, fsp->function)) {
   memcpy(fsp->die_mem, fn_die, sizeof(Dwarf_Die));
   fsp->found = 1;
   return 1;
  }
 } else {

  dwarf_decl_line(fn_die, &lno);
  if (lno < fsp->line && fsp->diff > fsp->line - lno) {

   fsp->diff = fsp->line - lno;
   memcpy(fsp->die_mem, fn_die, sizeof(Dwarf_Die));
   fsp->found = 1;
  }
 }
 return 0;
}
