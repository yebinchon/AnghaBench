
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int control_register; } ;


 int HDSP_XLRBreakoutCable ;

__attribute__((used)) static int hdsp_xlr_breakout_cable(struct hdsp *hdsp)
{
 if (hdsp->control_register & HDSP_XLRBreakoutCable)
  return 1;
 return 0;
}
