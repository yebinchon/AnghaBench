
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* rtx ;
struct TYPE_4__ {int gr_used_mask; } ;
struct TYPE_3__ {int save_gr_used_mask; int n_iter; int * iter_reg; scalar_t__ next_iter; void** prev_off; int ** prev_insn; int ** prev_addr; void** init_reg; int init_after; } ;
typedef void* HOST_WIDE_INT ;


 int DImode ;
 TYPE_2__ current_frame_info ;
 int gen_rtx_REG (int ,int) ;
 int get_last_insn () ;
 int next_scratch_gr_reg () ;
 TYPE_1__ spill_fill_data ;

__attribute__((used)) static void
setup_spill_pointers (int n_spills, rtx init_reg, HOST_WIDE_INT cfa_off)
{
  int i;

  spill_fill_data.init_after = get_last_insn ();
  spill_fill_data.init_reg[0] = init_reg;
  spill_fill_data.init_reg[1] = init_reg;
  spill_fill_data.prev_addr[0] = ((void*)0);
  spill_fill_data.prev_addr[1] = ((void*)0);
  spill_fill_data.prev_insn[0] = ((void*)0);
  spill_fill_data.prev_insn[1] = ((void*)0);
  spill_fill_data.prev_off[0] = cfa_off;
  spill_fill_data.prev_off[1] = cfa_off;
  spill_fill_data.next_iter = 0;
  spill_fill_data.save_gr_used_mask = current_frame_info.gr_used_mask;

  spill_fill_data.n_iter = 1 + (n_spills > 2);
  for (i = 0; i < spill_fill_data.n_iter; ++i)
    {
      int regno = next_scratch_gr_reg ();
      spill_fill_data.iter_reg[i] = gen_rtx_REG (DImode, regno);
      current_frame_info.gr_used_mask |= 1 << regno;
    }
}
