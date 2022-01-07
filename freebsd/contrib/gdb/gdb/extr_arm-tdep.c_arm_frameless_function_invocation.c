
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ FUNCTION_START_OFFSET ;
 scalar_t__ SKIP_PROLOGUE (scalar_t__) ;
 scalar_t__ get_frame_func (struct frame_info*) ;

__attribute__((used)) static int
arm_frameless_function_invocation (struct frame_info *fi)
{
  CORE_ADDR func_start, after_prologue;
  int frameless;
  func_start = (get_frame_func (fi) + FUNCTION_START_OFFSET);
  after_prologue = SKIP_PROLOGUE (func_start);





  frameless = (after_prologue < func_start + 12);
  return frameless;
}
