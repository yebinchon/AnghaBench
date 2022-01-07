
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_probe_point {int line; unsigned long offset; int * function; int * file; } ;
struct debuginfo {unsigned long bias; int dbg; } ;
typedef int Dwarf_Die ;
typedef unsigned long Dwarf_Addr ;


 int EINVAL ;
 int ENOMEM ;
 int cu_find_lineinfo (int *,unsigned long,char const**,int*) ;
 scalar_t__ die_find_inlinefunc (int *,unsigned long,int *) ;
 scalar_t__ die_find_realfunc (int *,unsigned long,int *) ;
 int die_get_call_lineno (int *) ;
 int dwarf_addrdie (int ,unsigned long,int *) ;
 scalar_t__ dwarf_decl_line (int *,int*) ;
 char* dwarf_diename (int *) ;
 scalar_t__ dwarf_entrypc (int *,unsigned long*) ;
 int free (int *) ;
 int pr_warning (char*,unsigned long) ;
 void* strdup (char const*) ;

int debuginfo__find_probe_point(struct debuginfo *self, unsigned long addr,
    struct perf_probe_point *ppt)
{
 Dwarf_Die cudie, spdie, indie;
 Dwarf_Addr _addr, baseaddr;
 const char *fname = ((void*)0), *func = ((void*)0), *tmp;
 int baseline = 0, lineno = 0, ret = 0;


 addr += self->bias;


 if (!dwarf_addrdie(self->dbg, (Dwarf_Addr)addr - self->bias, &cudie)) {
  pr_warning("Failed to find debug information for address %lx\n",
      addr);
  ret = -EINVAL;
  goto end;
 }


 cu_find_lineinfo(&cudie, addr, &fname, &lineno);



 if (die_find_realfunc(&cudie, (Dwarf_Addr)addr, &spdie)) {

  tmp = dwarf_diename(&spdie);
  if (!tmp ||
      dwarf_entrypc(&spdie, &baseaddr) != 0 ||
      dwarf_decl_line(&spdie, &baseline) != 0)
   goto post;
  func = tmp;

  if (addr == (unsigned long)baseaddr)

   lineno = baseline;
  else if (die_find_inlinefunc(&spdie, (Dwarf_Addr)addr,
          &indie)) {
   if (dwarf_entrypc(&indie, &_addr) == 0 &&
       _addr == addr)





    lineno = die_get_call_lineno(&indie);
   else {






    tmp = dwarf_diename(&indie);
    if (tmp &&
        dwarf_decl_line(&spdie, &baseline) == 0)
     func = tmp;
   }
  }
 }

post:

 if (lineno)
  ppt->line = lineno - baseline;
 else if (func)
  ppt->offset = addr - (unsigned long)baseaddr;


 if (func) {
  ppt->function = strdup(func);
  if (ppt->function == ((void*)0)) {
   ret = -ENOMEM;
   goto end;
  }
 }
 if (fname) {
  ppt->file = strdup(fname);
  if (ppt->file == ((void*)0)) {
   if (ppt->function) {
    free(ppt->function);
    ppt->function = ((void*)0);
   }
   ret = -ENOMEM;
   goto end;
  }
 }
end:
 if (ret == 0 && (fname || func))
  ret = 1;
 return ret;
}
