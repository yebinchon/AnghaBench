
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ noreorder; scalar_t__ mips16; } ;
struct TYPE_3__ {int fr_fix; } ;


 int NOP_INSN ;
 int insert_into_history (int ,int,int ) ;
 TYPE_2__ mips_opts ;
 TYPE_1__* prev_nop_frag ;
 int prev_nop_frag_holds ;
 int prev_nop_frag_required ;
 int prev_nop_frag_since ;

__attribute__((used)) static void
end_noreorder (void)
{
  mips_opts.noreorder--;
  if (mips_opts.noreorder == 0 && prev_nop_frag != ((void*)0))
    {


      prev_nop_frag->fr_fix -= ((prev_nop_frag_holds - prev_nop_frag_required)
    * (mips_opts.mips16 ? 2 : 4));
      insert_into_history (prev_nop_frag_since,
      prev_nop_frag_required, NOP_INSN);
      prev_nop_frag = ((void*)0);
    }
}
