
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int keep_pending_output; } ;


 int SEC_CODE ;
 int bfd_get_section_flags (int ,int ) ;
 int ia64_flush_insns () ;
 int insn_group_break (int,int ,int ) ;
 TYPE_1__ md ;
 int now_seg ;
 int stdoutput ;

void
ia64_flush_pending_output ()
{
  if (!md.keep_pending_output
      && bfd_get_section_flags (stdoutput, now_seg) & SEC_CODE)
    {


      insn_group_break (1, 0, 0);
      ia64_flush_insns ();
    }
}
