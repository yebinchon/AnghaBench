
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_range {scalar_t__ offset; scalar_t__ start; scalar_t__ end; int function; scalar_t__ file; } ;
struct line_finder {scalar_t__ fname; scalar_t__ lno_s; scalar_t__ lno_e; struct line_range* lr; } ;
struct dwarf_callback_param {int retval; struct line_finder* data; } ;
typedef int Dwarf_Die ;


 int DWARF_CB_ABORT ;
 int DWARF_CB_OK ;
 scalar_t__ DW_TAG_subprogram ;
 void* INT_MAX ;
 scalar_t__ die_compare_name (int *,int ) ;
 int die_walk_instances (int *,int ,struct line_finder*) ;
 scalar_t__ dwarf_decl_file (int *) ;
 int dwarf_decl_line (int *,scalar_t__*) ;
 scalar_t__ dwarf_func_inline (int *) ;
 scalar_t__ dwarf_tag (int *) ;
 int find_line_range_by_line (int *,struct line_finder*) ;
 int line_range_inline_cb ;
 int pr_debug (char*,scalar_t__,scalar_t__) ;
 scalar_t__ strtailcmp (scalar_t__,scalar_t__) ;

__attribute__((used)) static int line_range_search_cb(Dwarf_Die *sp_die, void *data)
{
 struct dwarf_callback_param *param = data;
 struct line_finder *lf = param->data;
 struct line_range *lr = lf->lr;


 if (lr->file && strtailcmp(lr->file, dwarf_decl_file(sp_die)))
  return DWARF_CB_OK;

 if (dwarf_tag(sp_die) == DW_TAG_subprogram &&
     die_compare_name(sp_die, lr->function)) {
  lf->fname = dwarf_decl_file(sp_die);
  dwarf_decl_line(sp_die, &lr->offset);
  pr_debug("fname: %s, lineno:%d\n", lf->fname, lr->offset);
  lf->lno_s = lr->offset + lr->start;
  if (lf->lno_s < 0)
   lf->lno_s = INT_MAX;
  lf->lno_e = lr->offset + lr->end;
  if (lf->lno_e < 0)
   lf->lno_e = INT_MAX;
  pr_debug("New line range: %d to %d\n", lf->lno_s, lf->lno_e);
  lr->start = lf->lno_s;
  lr->end = lf->lno_e;
  if (dwarf_func_inline(sp_die))
   param->retval = die_walk_instances(sp_die,
      line_range_inline_cb, lf);
  else
   param->retval = find_line_range_by_line(sp_die, lf);
  return DWARF_CB_ABORT;
 }
 return DWARF_CB_OK;
}
