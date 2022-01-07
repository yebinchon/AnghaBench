
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FIRST_VFP_REGNUM ;
 unsigned int LAST_VFP_REGNUM ;
 scalar_t__ TARGET_HARD_FLOAT ;
 scalar_t__ TARGET_VFP ;
 int arm_arch6 ;
 scalar_t__* call_used_regs ;
 int * regs_ever_live ;

__attribute__((used)) static int
arm_get_vfp_saved_size (void)
{
  unsigned int regno;
  int count;
  int saved;

  saved = 0;

  if (TARGET_HARD_FLOAT && TARGET_VFP)
    {
      count = 0;
      for (regno = FIRST_VFP_REGNUM;
    regno < LAST_VFP_REGNUM;
    regno += 2)
 {
   if ((!regs_ever_live[regno] || call_used_regs[regno])
       && (!regs_ever_live[regno + 1] || call_used_regs[regno + 1]))
     {
       if (count > 0)
  {

    if (count == 2 && !arm_arch6)
      count++;
    saved += count * 8 + 4;
  }
       count = 0;
     }
   else
     count++;
 }
      if (count > 0)
 {
   if (count == 2 && !arm_arch6)
     count++;
   saved += count * 8 + 4;
 }
    }
  return saved;
}
