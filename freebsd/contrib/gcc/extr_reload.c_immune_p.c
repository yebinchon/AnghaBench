
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decomposition {scalar_t__ start; scalar_t__ end; scalar_t__ base; scalar_t__ safe; scalar_t__ reg_flag; } ;
typedef int rtx ;


 scalar_t__ CONSTANT_P (scalar_t__) ;
 int MEM_P (int ) ;
 struct decomposition decompose (int ) ;
 scalar_t__ frame_pointer_rtx ;
 int gcc_assert (int ) ;
 scalar_t__ hard_frame_pointer_rtx ;
 int refers_to_regno_for_reload_p (scalar_t__,scalar_t__,int ,int *) ;
 int rtx_equal_p (scalar_t__,scalar_t__) ;
 scalar_t__ stack_pointer_rtx ;

__attribute__((used)) static int
immune_p (rtx x, rtx y, struct decomposition ydata)
{
  struct decomposition xdata;

  if (ydata.reg_flag)
    return !refers_to_regno_for_reload_p (ydata.start, ydata.end, x, (rtx*) 0);
  if (ydata.safe)
    return 1;

  gcc_assert (MEM_P (y));

  if (!MEM_P (x))
    return 1;

  xdata = decompose (x);

  if (! rtx_equal_p (xdata.base, ydata.base))
    {

      if (CONSTANT_P (xdata.base) && CONSTANT_P (ydata.base))
 return 1;

      if (CONSTANT_P (xdata.base)
   && (ydata.base == frame_pointer_rtx
       || ydata.base == hard_frame_pointer_rtx
       || ydata.base == stack_pointer_rtx))
 return 1;
      if (CONSTANT_P (ydata.base)
   && (xdata.base == frame_pointer_rtx
       || xdata.base == hard_frame_pointer_rtx
       || xdata.base == stack_pointer_rtx))
 return 1;

      return 0;
    }

  return (xdata.start >= ydata.end || ydata.start >= xdata.end);
}
