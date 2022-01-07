
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
typedef int LONGEST ;
typedef int CORE_ADDR ;


 int NUM_REGS ;
 int SP_REGNUM ;
 int current_regcache ;
 int frame_unwind_register_signed (struct frame_info*,int) ;
 int gdb_assert (int) ;
 int regcache_cooked_read_signed (int ,int,int *) ;

__attribute__((used)) static CORE_ADDR
read_next_frame_reg (struct frame_info *fi, int regno)
{

  gdb_assert (regno >= NUM_REGS);
  if (fi == ((void*)0))
    {
      LONGEST val;
      regcache_cooked_read_signed (current_regcache, regno, &val);
      return val;
    }
  else if ((regno % NUM_REGS) == SP_REGNUM)




    return frame_unwind_register_signed (fi, regno % NUM_REGS);
  else
    return frame_unwind_register_signed (fi, regno);

}
