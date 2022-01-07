
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ FUNCTION_START_OFFSET ;
 scalar_t__ SKIP_PROLOGUE (scalar_t__) ;
 scalar_t__ get_frame_func (struct frame_info*) ;
 scalar_t__ get_frame_pc (struct frame_info*) ;

int
legacy_frameless_look_for_prologue (struct frame_info *frame)
{
  CORE_ADDR func_start;

  func_start = get_frame_func (frame);
  if (func_start)
    {
      func_start += FUNCTION_START_OFFSET;
      return func_start == SKIP_PROLOGUE (func_start);
    }
  else if (get_frame_pc (frame) == 0)




    return 1;
  else




    return 0;
}
