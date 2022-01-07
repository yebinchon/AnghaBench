
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rtx ;


 int BLOCK_FOR_INSN (int *) ;
 scalar_t__ CC0_P (int *) ;
 int * NEXT_INSN (int *) ;
 scalar_t__ NONJUMP_INSN_P (int *) ;
 scalar_t__ REG_P (int *) ;
 int * SET_DEST (int *) ;
 scalar_t__ any_condjump_p (int *) ;
 int cprop_jump (int ,int *,int *,int *,int *) ;
 scalar_t__ onlyjump_p (int *) ;
 int * single_set (int *) ;
 scalar_t__ try_replace_reg (int *,int *,int *) ;

__attribute__((used)) static bool
constprop_register (rtx insn, rtx from, rtx to, bool alter_jumps)
{
  rtx sset;



  if (alter_jumps
      && (sset = single_set (insn)) != ((void*)0)
      && NEXT_INSN (insn)
      && any_condjump_p (NEXT_INSN (insn)) && onlyjump_p (NEXT_INSN (insn)))
    {
      rtx dest = SET_DEST (sset);
      if ((REG_P (dest) || CC0_P (dest))
   && cprop_jump (BLOCK_FOR_INSN (insn), insn, NEXT_INSN (insn), from, to))
 return 1;
    }


  if (NONJUMP_INSN_P (insn)
      && try_replace_reg (from, to, insn))
    return 1;







  else if (alter_jumps && any_condjump_p (insn) && onlyjump_p (insn))
    return cprop_jump (BLOCK_FOR_INSN (insn), ((void*)0), insn, from, to);
  return 0;
}
