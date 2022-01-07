
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bb_info {int avloc; int killed; } ;
typedef int rtx ;
typedef void* basic_block ;


 struct bb_info* BB_INFO (void*) ;
 scalar_t__ CLOBBER ;
 scalar_t__ GET_CODE (int ) ;
 int REGNO (int ) ;
 int REG_P (int ) ;
 scalar_t__ SUBREG ;
 int SUBREG_REG (int ) ;
 int bitmap_clear_bit (int ,int) ;
 int bitmap_set_bit (int ,int) ;

__attribute__((used)) static void
mark_reg_change (rtx reg, rtx setter, void *data)
{
  int regno;
  basic_block bb = data;
  struct bb_info *bb_info = BB_INFO (bb);

  if (GET_CODE (reg) == SUBREG)
    reg = SUBREG_REG (reg);

  if (!REG_P (reg))
    return;

  regno = REGNO (reg);
  bitmap_set_bit (bb_info->killed, regno);

  if (GET_CODE (setter) != CLOBBER)
    bitmap_set_bit (bb_info->avloc, regno);
  else
    bitmap_clear_bit (bb_info->avloc, regno);
}
