
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int t_flags; TYPE_2__* t_fndef; int t_type; } ;
typedef TYPE_1__ tdesc_t ;
struct TYPE_5__ {int fn_nargs; int fn_vargs; void** fn_args; void* fn_ret; } ;
typedef TYPE_2__ fndef_t ;
typedef int dwarf_t ;
typedef int Dwarf_Off ;
typedef scalar_t__ Dwarf_Half ;
typedef int * Dwarf_Die ;
typedef int * Dwarf_Attribute ;


 int DW_AT_type ;
 scalar_t__ DW_TAG_formal_parameter ;
 scalar_t__ DW_TAG_unspecified_parameters ;
 int FUNCTION ;
 int TDESC_F_RESOLVED ;
 int debug (int,char*,int ,int,...) ;
 int * die_attr (int *,int *,int ,int ) ;
 int * die_child (int *,int *) ;
 int die_create_one (int *,int *) ;
 scalar_t__ die_isdecl (int *,int *) ;
 void* die_lookup_pass1 (int *,int *,int ) ;
 int * die_sibling (int *,int *) ;
 scalar_t__ die_tag (int *,int *) ;
 void* tdesc_intr_void (int *) ;
 void* xcalloc (int) ;

__attribute__((used)) static void
die_funcptr_create(dwarf_t *dw, Dwarf_Die die, Dwarf_Off off, tdesc_t *tdp)
{
 Dwarf_Attribute attr;
 Dwarf_Half tag;
 Dwarf_Die arg;
 fndef_t *fn;
 int i;

 debug(3, "die %llu <%llx>: creating function pointer\n", off, off);





 for (arg = die_child(dw, die); arg != ((void*)0);
     arg = die_sibling(dw, arg)) {
  if ((tag = die_tag(dw, arg)) != DW_TAG_formal_parameter &&
      tag != DW_TAG_unspecified_parameters) {

   die_create_one(dw, arg);
  }
 }

 if (die_isdecl(dw, die)) {






  return;
 }

 fn = xcalloc(sizeof (fndef_t));

 tdp->t_type = FUNCTION;

 if ((attr = die_attr(dw, die, DW_AT_type, 0)) != ((void*)0)) {
  fn->fn_ret = die_lookup_pass1(dw, die, DW_AT_type);
 } else {
  fn->fn_ret = tdesc_intr_void(dw);
 }




 for (fn->fn_nargs = 0, arg = die_child(dw, die); arg != ((void*)0);
     arg = die_sibling(dw, arg)) {
  if ((tag = die_tag(dw, arg)) == DW_TAG_formal_parameter)
   fn->fn_nargs++;
  else if (tag == DW_TAG_unspecified_parameters &&
      fn->fn_nargs > 0)
   fn->fn_vargs = 1;
 }

 if (fn->fn_nargs != 0) {
  debug(3, "die %llu: adding %d argument%s\n", off, fn->fn_nargs,
      (fn->fn_nargs > 1 ? "s" : ""));

  fn->fn_args = xcalloc(sizeof (tdesc_t *) * fn->fn_nargs);
  for (i = 0, arg = die_child(dw, die);
      arg != ((void*)0) && i < (int) fn->fn_nargs;
      arg = die_sibling(dw, arg)) {
   if (die_tag(dw, arg) != DW_TAG_formal_parameter)
    continue;

   fn->fn_args[i++] = die_lookup_pass1(dw, arg,
       DW_AT_type);
  }
 }

 tdp->t_fndef = fn;
 tdp->t_flags |= TDESC_F_RESOLVED;
}
