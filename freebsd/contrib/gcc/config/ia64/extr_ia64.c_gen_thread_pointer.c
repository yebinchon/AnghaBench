
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 int Pmode ;
 scalar_t__ gen_rtx_REG (int ,int) ;
 scalar_t__ thread_pointer_rtx ;

__attribute__((used)) static rtx
gen_thread_pointer (void)
{
  if (!thread_pointer_rtx)
    thread_pointer_rtx = gen_rtx_REG (Pmode, 13);
  return thread_pointer_rtx;
}
