
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct elt_loc_list {scalar_t__ loc; int setting_insn; scalar_t__ in_libcall; struct elt_loc_list* next; } ;
typedef scalar_t__ rtx ;
struct TYPE_3__ {struct elt_loc_list* locs; } ;
typedef TYPE_1__ cselib_val ;


 int CONSTANT_P (scalar_t__) ;
 scalar_t__ FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (scalar_t__) ;
 int INSN_UID (scalar_t__) ;
 int MEM_P (int ) ;
 int NULL_RTX ;
 int PATTERN (scalar_t__) ;
 int REGNO (scalar_t__) ;
 int REG_EQUIV ;
 scalar_t__ REG_P (scalar_t__) ;
 scalar_t__ USE ;
 int XEXP (scalar_t__,int ) ;
 int adjust_libcall_notes (scalar_t__,scalar_t__,scalar_t__,scalar_t__*) ;
 scalar_t__ asm_noperands (int ) ;
 scalar_t__ constprop_register (scalar_t__,scalar_t__,scalar_t__,int) ;
 TYPE_1__* cselib_lookup (scalar_t__,int ,int ) ;
 int * dump_file ;
 scalar_t__ find_reg_note (int ,int ,int ) ;
 int fprintf (int *,char*,...) ;
 int gcc_assert (int) ;
 scalar_t__ gcse_constant_p (scalar_t__) ;
 int local_const_prop_count ;
 int local_copy_prop_count ;
 int print_rtl (int *,scalar_t__) ;
 scalar_t__ try_replace_reg (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static bool
do_local_cprop (rtx x, rtx insn, bool alter_jumps, rtx *libcall_sp)
{
  rtx newreg = ((void*)0), newcnst = ((void*)0);



  if (REG_P (x)
      && (REGNO (x) >= FIRST_PSEUDO_REGISTER
          || (GET_CODE (PATTERN (insn)) != USE
       && asm_noperands (PATTERN (insn)) < 0)))
    {
      cselib_val *val = cselib_lookup (x, GET_MODE (x), 0);
      struct elt_loc_list *l;

      if (!val)
 return 0;
      for (l = val->locs; l; l = l->next)
 {
   rtx this_rtx = l->loc;
   rtx note;


   if (l->in_libcall && ! CONSTANT_P (this_rtx))
     continue;

   if (gcse_constant_p (this_rtx))
     newcnst = this_rtx;
   if (REG_P (this_rtx) && REGNO (this_rtx) >= FIRST_PSEUDO_REGISTER





       && (!(note = find_reg_note (l->setting_insn, REG_EQUIV, NULL_RTX))
    || ! MEM_P (XEXP (note, 0))))
     newreg = this_rtx;
 }
      if (newcnst && constprop_register (insn, x, newcnst, alter_jumps))
 {





   bool adjusted;

   adjusted = adjust_libcall_notes (x, newcnst, insn, libcall_sp);
   gcc_assert (adjusted);

   if (dump_file != ((void*)0))
     {
       fprintf (dump_file, "LOCAL CONST-PROP: Replacing reg %d in ",
         REGNO (x));
       fprintf (dump_file, "insn %d with constant ",
         INSN_UID (insn));
       print_rtl (dump_file, newcnst);
       fprintf (dump_file, "\n");
     }
   local_const_prop_count++;
   return 1;
 }
      else if (newreg && newreg != x && try_replace_reg (x, newreg, insn))
 {
   adjust_libcall_notes (x, newreg, insn, libcall_sp);
   if (dump_file != ((void*)0))
     {
       fprintf (dump_file,
         "LOCAL COPY-PROP: Replacing reg %d in insn %d",
         REGNO (x), INSN_UID (insn));
       fprintf (dump_file, " with reg %d\n", REGNO (newreg));
     }
   local_copy_prop_count++;
   return 1;
 }
    }
  return 0;
}
