
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct probe_finder {int addr; int lno; int fname; TYPE_1__* pev; } ;
struct perf_probe_point {scalar_t__ offset; scalar_t__ lazy_line; scalar_t__ line; scalar_t__ file; int function; } ;
struct dwarf_callback_param {int retval; struct probe_finder* data; } ;
struct TYPE_2__ {struct perf_probe_point point; } ;
typedef int Dwarf_Die ;
typedef int Dwarf_Attribute ;


 int DWARF_CB_ABORT ;
 int DWARF_CB_OK ;
 int DW_AT_declaration ;
 scalar_t__ DW_TAG_subprogram ;
 int ENOENT ;
 int call_probe_finder (int *,struct probe_finder*) ;
 int die_compare_name (int *,int ) ;
 int die_walk_instances (int *,int ,void*) ;
 scalar_t__ dwarf_attr (int *,int ,int *) ;
 int dwarf_decl_file (int *) ;
 int dwarf_decl_line (int *,int *) ;
 int dwarf_diename (int *) ;
 scalar_t__ dwarf_entrypc (int *,int *) ;
 int dwarf_func_inline (int *) ;
 scalar_t__ dwarf_tag (int *) ;
 int find_probe_point_by_line (struct probe_finder*) ;
 int find_probe_point_lazy (int *,struct probe_finder*) ;
 int pr_warning (char*,int ) ;
 int probe_point_inline_cb ;
 scalar_t__ strtailcmp (scalar_t__,int ) ;

__attribute__((used)) static int probe_point_search_cb(Dwarf_Die *sp_die, void *data)
{
 struct dwarf_callback_param *param = data;
 struct probe_finder *pf = param->data;
 struct perf_probe_point *pp = &pf->pev->point;
 Dwarf_Attribute attr;


 if (dwarf_tag(sp_die) != DW_TAG_subprogram ||
     !die_compare_name(sp_die, pp->function) ||
     dwarf_attr(sp_die, DW_AT_declaration, &attr))
  return DWARF_CB_OK;


 if (pp->file && strtailcmp(pp->file, dwarf_decl_file(sp_die)))
  return DWARF_CB_OK;

 pf->fname = dwarf_decl_file(sp_die);
 if (pp->line) {
  dwarf_decl_line(sp_die, &pf->lno);
  pf->lno += pp->line;
  param->retval = find_probe_point_by_line(pf);
 } else if (!dwarf_func_inline(sp_die)) {

  if (pp->lazy_line)
   param->retval = find_probe_point_lazy(sp_die, pf);
  else {
   if (dwarf_entrypc(sp_die, &pf->addr) != 0) {
    pr_warning("Failed to get entry address of "
        "%s.\n", dwarf_diename(sp_die));
    param->retval = -ENOENT;
    return DWARF_CB_ABORT;
   }
   pf->addr += pp->offset;

   param->retval = call_probe_finder(sp_die, pf);
  }
 } else

  param->retval = die_walk_instances(sp_die,
     probe_point_inline_cb, (void *)pf);

 return DWARF_CB_ABORT;
}
