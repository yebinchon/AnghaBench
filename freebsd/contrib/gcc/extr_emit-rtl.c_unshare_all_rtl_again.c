
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef scalar_t__ rtx ;
struct TYPE_2__ {int decl; } ;


 scalar_t__ DECL_ARGUMENTS (int ) ;
 int DECL_INITIAL (int ) ;
 int DECL_RTL (scalar_t__) ;
 scalar_t__ INSN_P (scalar_t__) ;
 int LOG_LINKS (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 int PATTERN (scalar_t__) ;
 int REG_NOTES (scalar_t__) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 TYPE_1__* cfun ;
 int reset_used_decls (int ) ;
 int reset_used_flags (int ) ;
 int stack_slot_list ;
 int unshare_all_rtl_1 (int ,scalar_t__) ;

void
unshare_all_rtl_again (rtx insn)
{
  rtx p;
  tree decl;

  for (p = insn; p; p = NEXT_INSN (p))
    if (INSN_P (p))
      {
 reset_used_flags (PATTERN (p));
 reset_used_flags (REG_NOTES (p));
 reset_used_flags (LOG_LINKS (p));
      }


  reset_used_decls (DECL_INITIAL (cfun->decl));


  for (decl = DECL_ARGUMENTS (cfun->decl); decl; decl = TREE_CHAIN (decl))
    reset_used_flags (DECL_RTL (decl));

  reset_used_flags (stack_slot_list);

  unshare_all_rtl_1 (cfun->decl, insn);
}
