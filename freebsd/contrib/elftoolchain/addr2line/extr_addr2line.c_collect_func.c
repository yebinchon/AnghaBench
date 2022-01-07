
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Func {void* call_file; void* call_line; struct Func* inlined_caller; void* hipc; void* lopc; scalar_t__ ranges_cnt; int * ranges; int * name; } ;
struct CU {int funclist; } ;
typedef void* Dwarf_Unsigned ;
typedef scalar_t__ Dwarf_Signed ;
typedef int Dwarf_Ranges ;
typedef int Dwarf_Off ;
typedef scalar_t__ Dwarf_Half ;
typedef int Dwarf_Error ;
typedef int * Dwarf_Die ;
typedef int Dwarf_Debug ;
typedef int Dwarf_Attribute ;


 int DW_AT_abstract_origin ;
 int DW_AT_call_file ;
 int DW_AT_call_line ;
 int DW_AT_high_pc ;
 int DW_AT_low_pc ;
 int DW_AT_name ;
 int DW_AT_ranges ;
 int DW_AT_specification ;
 int DW_DLA_DIE ;
 int DW_DLV_ERROR ;
 int DW_DLV_OK ;
 scalar_t__ DW_TAG_entry_point ;
 scalar_t__ DW_TAG_inlined_subroutine ;
 scalar_t__ DW_TAG_subprogram ;
 int EXIT_FAILURE ;
 int STAILQ_INSERT_TAIL (int *,struct Func*,int ) ;
 struct Func* calloc (int,int) ;
 int dwarf_attr (int *,int ,int *,int *) ;
 int dwarf_attrval_string (int *,int ,char const**,int *) ;
 int dwarf_attrval_unsigned (int *,int ,void**,int *) ;
 int dwarf_child (int *,int **,int *) ;
 int dwarf_dealloc (int ,int *,int ) ;
 int dwarf_errmsg (int ) ;
 int dwarf_get_ranges (int ,int ,int **,scalar_t__*,int *,int *) ;
 int dwarf_global_formref (int ,int *,int *) ;
 int dwarf_offdie (int ,int ,int **,int *) ;
 int dwarf_siblingof (int ,int *,int **,int *) ;
 scalar_t__ dwarf_tag (int *,scalar_t__*,int *) ;
 int err (int ,char*) ;
 int handle_high_pc (int *,void*,void**) ;
 int next ;
 int * strdup (char const*) ;
 int warnx (char*,int ) ;

__attribute__((used)) static void
collect_func(Dwarf_Debug dbg, Dwarf_Die die, struct Func *parent, struct CU *cu)
{
 Dwarf_Die ret_die, abst_die, spec_die;
 Dwarf_Error de;
 Dwarf_Half tag;
 Dwarf_Unsigned lopc, hipc, ranges_off;
 Dwarf_Signed ranges_cnt;
 Dwarf_Off ref;
 Dwarf_Attribute abst_at, spec_at;
 Dwarf_Ranges *ranges;
 const char *funcname;
 struct Func *f;
 int found_ranges, ret;

 f = ((void*)0);
 abst_die = spec_die = ((void*)0);

 if (dwarf_tag(die, &tag, &de)) {
  warnx("dwarf_tag: %s", dwarf_errmsg(de));
  goto cont_search;
 }
 if (tag == DW_TAG_subprogram || tag == DW_TAG_entry_point ||
     tag == DW_TAG_inlined_subroutine) {





  ranges = ((void*)0);
  ranges_cnt = 0;
  found_ranges = 0;
  if (dwarf_attrval_unsigned(die, DW_AT_ranges, &ranges_off,
      &de) == DW_DLV_OK &&
      dwarf_get_ranges(dbg, (Dwarf_Off) ranges_off, &ranges,
      &ranges_cnt, ((void*)0), &de) == DW_DLV_OK) {
   if (ranges != ((void*)0) && ranges_cnt > 0) {
    found_ranges = 1;
    goto get_func_name;
   }
  }





  if (dwarf_attrval_unsigned(die, DW_AT_low_pc, &lopc, &de) ||
      dwarf_attrval_unsigned(die, DW_AT_high_pc, &hipc, &de))
   goto cont_search;
  if (handle_high_pc(die, lopc, &hipc) != DW_DLV_OK)
   goto cont_search;

 get_func_name:




  if (dwarf_attrval_string(die, DW_AT_name, &funcname, &de) ==
      DW_DLV_OK)
   goto add_func;





  if (dwarf_attr(die, DW_AT_abstract_origin, &abst_at, &de) ==
      DW_DLV_OK &&
      dwarf_global_formref(abst_at, &ref, &de) == DW_DLV_OK &&
      dwarf_offdie(dbg, ref, &abst_die, &de) == DW_DLV_OK &&
      dwarf_attrval_string(abst_die, DW_AT_name, &funcname,
      &de) == DW_DLV_OK)
   goto add_func;






  if (dwarf_attr(die, DW_AT_specification, &spec_at, &de) ==
      DW_DLV_OK &&
      dwarf_global_formref(spec_at, &ref, &de) == DW_DLV_OK &&
      dwarf_offdie(dbg, ref, &spec_die, &de) == DW_DLV_OK &&
      dwarf_attrval_string(spec_die, DW_AT_name, &funcname,
      &de) == DW_DLV_OK)
   goto add_func;


  goto cont_search;

 add_func:
  if ((f = calloc(1, sizeof(*f))) == ((void*)0))
   err(EXIT_FAILURE, "calloc");
  if ((f->name = strdup(funcname)) == ((void*)0))
   err(EXIT_FAILURE, "strdup");
  if (found_ranges) {
   f->ranges = ranges;
   f->ranges_cnt = ranges_cnt;
  } else {
   f->lopc = lopc;
   f->hipc = hipc;
  }
  if (tag == DW_TAG_inlined_subroutine) {
   f->inlined_caller = parent;
   dwarf_attrval_unsigned(die, DW_AT_call_file,
       &f->call_file, &de);
   dwarf_attrval_unsigned(die, DW_AT_call_line,
       &f->call_line, &de);
  }
  STAILQ_INSERT_TAIL(&cu->funclist, f, next);
 }

cont_search:


 ret = dwarf_child(die, &ret_die, &de);
 if (ret == DW_DLV_ERROR)
  warnx("dwarf_child: %s", dwarf_errmsg(de));
 else if (ret == DW_DLV_OK) {
  if (f != ((void*)0))
   collect_func(dbg, ret_die, f, cu);
  else
   collect_func(dbg, ret_die, parent, cu);
 }


 ret = dwarf_siblingof(dbg, die, &ret_die, &de);
 if (ret == DW_DLV_ERROR)
  warnx("dwarf_siblingof: %s", dwarf_errmsg(de));
 else if (ret == DW_DLV_OK)
  collect_func(dbg, ret_die, parent, cu);


 dwarf_dealloc(dbg, die, DW_DLA_DIE);

 if (abst_die != ((void*)0))
  dwarf_dealloc(dbg, abst_die, DW_DLA_DIE);

 if (spec_die != ((void*)0))
  dwarf_dealloc(dbg, spec_die, DW_DLA_DIE);
}
