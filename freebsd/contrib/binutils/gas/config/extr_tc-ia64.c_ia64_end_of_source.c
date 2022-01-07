
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hint; } ;
struct TYPE_4__ {TYPE_1__ mem_offset; int flags; } ;


 int bfd_set_private_flags (int ,int ) ;
 int ia64_flush_insns () ;
 int insn_group_break (int,int ,int ) ;
 TYPE_2__ md ;
 int stdoutput ;

void
ia64_end_of_source ()
{

  insn_group_break (1, 0, 0);


  ia64_flush_insns ();

  bfd_set_private_flags (stdoutput, md.flags);

  md.mem_offset.hint = 0;
}
