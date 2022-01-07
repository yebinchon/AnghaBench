
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct probe_trace_arg {int * ref; int * value; } ;
struct TYPE_4__ {scalar_t__ atom; unsigned int number; unsigned int number2; } ;
typedef unsigned int Dwarf_Word ;
typedef TYPE_1__ Dwarf_Op ;
typedef int Dwarf_Die ;
typedef int Dwarf_Attribute ;
typedef int Dwarf_Addr ;


 int DW_AT_external ;
 int DW_AT_location ;
 scalar_t__ DW_OP_addr ;
 scalar_t__ DW_OP_breg0 ;
 scalar_t__ DW_OP_breg31 ;
 scalar_t__ DW_OP_bregx ;
 scalar_t__ DW_OP_fbreg ;
 scalar_t__ DW_OP_reg0 ;
 scalar_t__ DW_OP_reg31 ;
 scalar_t__ DW_OP_regx ;
 int ENOENT ;
 int ENOMEM ;
 int ENOTSUP ;
 int ERANGE ;
 void* alloc_trace_arg_ref (long) ;
 int * dwarf_attr (int *,int ,int *) ;
 char* dwarf_diename (int *) ;
 scalar_t__ dwarf_getlocation_addr (int *,int ,TYPE_1__**,size_t*,int) ;
 char* get_arch_regstr (unsigned int) ;
 int pr_debug (char*,scalar_t__) ;
 int pr_warning (char*,unsigned int) ;
 int snprintf (int *,int,char*,char*) ;
 int * strdup (char const*) ;
 int strlen (char*) ;
 int * zalloc (int) ;

__attribute__((used)) static int convert_variable_location(Dwarf_Die *vr_die, Dwarf_Addr addr,
         Dwarf_Op *fb_ops,
         struct probe_trace_arg *tvar)
{
 Dwarf_Attribute attr;
 Dwarf_Op *op;
 size_t nops;
 unsigned int regn;
 Dwarf_Word offs = 0;
 bool ref = 0;
 const char *regs;
 int ret;

 if (dwarf_attr(vr_die, DW_AT_external, &attr) != ((void*)0))
  goto static_var;


 if (dwarf_attr(vr_die, DW_AT_location, &attr) == ((void*)0) ||
     dwarf_getlocation_addr(&attr, addr, &op, &nops, 1) <= 0 ||
     nops == 0) {

  return -ENOENT;
 }

 if (op->atom == DW_OP_addr) {
static_var:
  if (!tvar)
   return 0;

  ret = strlen(dwarf_diename(vr_die));
  tvar->value = zalloc(ret + 2);
  if (tvar->value == ((void*)0))
   return -ENOMEM;
  snprintf(tvar->value, ret + 2, "@%s", dwarf_diename(vr_die));
  tvar->ref = alloc_trace_arg_ref((long)offs);
  if (tvar->ref == ((void*)0))
   return -ENOMEM;
  return 0;
 }


 if (op->atom == DW_OP_fbreg) {
  if (fb_ops == ((void*)0))
   return -ENOTSUP;
  ref = 1;
  offs = op->number;
  op = &fb_ops[0];
 }

 if (op->atom >= DW_OP_breg0 && op->atom <= DW_OP_breg31) {
  regn = op->atom - DW_OP_breg0;
  offs += op->number;
  ref = 1;
 } else if (op->atom >= DW_OP_reg0 && op->atom <= DW_OP_reg31) {
  regn = op->atom - DW_OP_reg0;
 } else if (op->atom == DW_OP_bregx) {
  regn = op->number;
  offs += op->number2;
  ref = 1;
 } else if (op->atom == DW_OP_regx) {
  regn = op->number;
 } else {
  pr_debug("DW_OP %x is not supported.\n", op->atom);
  return -ENOTSUP;
 }

 if (!tvar)
  return 0;

 regs = get_arch_regstr(regn);
 if (!regs) {

  pr_warning("Mapping for the register number %u "
      "missing on this architecture.\n", regn);
  return -ERANGE;
 }

 tvar->value = strdup(regs);
 if (tvar->value == ((void*)0))
  return -ENOMEM;

 if (ref) {
  tvar->ref = alloc_trace_arg_ref((long)offs);
  if (tvar->ref == ((void*)0))
   return -ENOMEM;
 }
 return 0;
}
