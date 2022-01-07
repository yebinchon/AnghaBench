
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reg_avail_info {int last_set; int first_set; TYPE_1__* last_bb; } ;
typedef int rtx ;
struct TYPE_2__ {size_t index; } ;


 int INSN_CUID (int ) ;
 int SET_BIT (int ,int) ;
 TYPE_1__* current_bb ;
 struct reg_avail_info* reg_avail_info ;
 int * reg_set_in_block ;

__attribute__((used)) static void
record_last_reg_set_info (rtx insn, int regno)
{
  struct reg_avail_info *info = &reg_avail_info[regno];
  int cuid = INSN_CUID (insn);

  info->last_set = cuid;
  if (info->last_bb != current_bb)
    {
      info->last_bb = current_bb;
      info->first_set = cuid;
      SET_BIT (reg_set_in_block[current_bb->index], regno);
    }
}
