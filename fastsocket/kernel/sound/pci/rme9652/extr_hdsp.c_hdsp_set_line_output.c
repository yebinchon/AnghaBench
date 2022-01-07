
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int control_register; } ;


 int HDSP_LineOut ;
 int HDSP_controlRegister ;
 int hdsp_write (struct hdsp*,int ,int ) ;

__attribute__((used)) static int hdsp_set_line_output(struct hdsp *hdsp, int out)
{
 if (out)
  hdsp->control_register |= HDSP_LineOut;
 else
  hdsp->control_register &= ~HDSP_LineOut;
 hdsp_write(hdsp, HDSP_controlRegister, hdsp->control_register);
 return 0;
}
