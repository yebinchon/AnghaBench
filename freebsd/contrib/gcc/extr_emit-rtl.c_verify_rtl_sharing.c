
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ INSN_P (scalar_t__) ;
 int LOG_LINKS (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 int PATTERN (scalar_t__) ;
 int REG_NOTES (scalar_t__) ;
 scalar_t__ get_insns () ;
 int reset_used_flags (int ) ;
 int verify_rtx_sharing (int ,scalar_t__) ;

void
verify_rtl_sharing (void)
{
  rtx p;

  for (p = get_insns (); p; p = NEXT_INSN (p))
    if (INSN_P (p))
      {
 reset_used_flags (PATTERN (p));
 reset_used_flags (REG_NOTES (p));
 reset_used_flags (LOG_LINKS (p));
      }

  for (p = get_insns (); p; p = NEXT_INSN (p))
    if (INSN_P (p))
      {
 verify_rtx_sharing (PATTERN (p), p);
 verify_rtx_sharing (REG_NOTES (p), p);
 verify_rtx_sharing (LOG_LINKS (p), p);
      }
}
