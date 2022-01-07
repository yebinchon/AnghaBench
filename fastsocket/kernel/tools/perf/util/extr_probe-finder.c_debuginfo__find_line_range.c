
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pubname_callback_param {scalar_t__ found; int * sp_die; int * cu_die; int file; scalar_t__ function; } ;
struct line_range {int path; int comp_dir; int end; int start; scalar_t__ function; int file; } ;
struct line_finder {int found; int cu_die; int lno_e; int lno_s; scalar_t__ fname; int sp_die; struct line_range* lr; } ;
struct dwarf_callback_param {void* data; int retval; } ;
struct debuginfo {int dbg; } ;
typedef scalar_t__ Dwarf_Off ;
typedef int Dwarf_Die ;


 int ENOMEM ;
 scalar_t__ cu_find_realpath (int *,int ) ;
 char* cu_get_comp_dir (int *) ;
 int dwarf_getpubnames (int ,int ,struct pubname_callback_param*,int ) ;
 scalar_t__ dwarf_nextcu (int ,scalar_t__,scalar_t__*,size_t*,int *,int *,int *) ;
 int * dwarf_offdie (int ,scalar_t__,int *) ;
 int find_line_range_by_func (struct line_finder*) ;
 int find_line_range_by_line (int *,struct line_finder*) ;
 int line_range_search_cb (int *,struct dwarf_callback_param*) ;
 int pr_debug (char*,int ) ;
 int pubname_search_cb ;
 int strdup (char const*) ;

int debuginfo__find_line_range(struct debuginfo *self, struct line_range *lr)
{
 struct line_finder lf = {.lr = lr, .found = 0};
 int ret = 0;
 Dwarf_Off off = 0, noff;
 size_t cuhl;
 Dwarf_Die *diep;
 const char *comp_dir;


 if (lr->function) {
  struct pubname_callback_param pubname_param = {
   .function = lr->function, .file = lr->file,
   .cu_die = &lf.cu_die, .sp_die = &lf.sp_die, .found = 0};
  struct dwarf_callback_param line_range_param = {
   .data = (void *)&lf, .retval = 0};

  dwarf_getpubnames(self->dbg, pubname_search_cb,
      &pubname_param, 0);
  if (pubname_param.found) {
   line_range_search_cb(&lf.sp_die, &line_range_param);
   if (lf.found)
    goto found;
  }
 }


 while (!lf.found && ret >= 0) {
  if (dwarf_nextcu(self->dbg, off, &noff, &cuhl,
     ((void*)0), ((void*)0), ((void*)0)) != 0)
   break;


  diep = dwarf_offdie(self->dbg, off + cuhl, &lf.cu_die);
  if (!diep)
   continue;


  if (lr->file)
   lf.fname = cu_find_realpath(&lf.cu_die, lr->file);
  else
   lf.fname = 0;

  if (!lr->file || lf.fname) {
   if (lr->function)
    ret = find_line_range_by_func(&lf);
   else {
    lf.lno_s = lr->start;
    lf.lno_e = lr->end;
    ret = find_line_range_by_line(((void*)0), &lf);
   }
  }
  off = noff;
 }

found:

 if (lf.found) {
  comp_dir = cu_get_comp_dir(&lf.cu_die);
  if (comp_dir) {
   lr->comp_dir = strdup(comp_dir);
   if (!lr->comp_dir)
    ret = -ENOMEM;
  }
 }

 pr_debug("path: %s\n", lr->path);
 return (ret < 0) ? ret : lf.found;
}
