
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 unsigned int END_HARD_REGNO (int ) ;
 unsigned int REGNO (int ) ;
 int* reg_avail_info ;

__attribute__((used)) static bool
reg_changed_after_insn_p (rtx x, int cuid)
{
  unsigned int regno, end_regno;

  regno = REGNO (x);
  end_regno = END_HARD_REGNO (x);
  do
    if (reg_avail_info[regno] > cuid)
      return 1;
  while (++regno < end_regno);
  return 0;
}
