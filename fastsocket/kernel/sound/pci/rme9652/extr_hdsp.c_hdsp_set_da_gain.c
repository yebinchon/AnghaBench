
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int control_register; } ;


 int HDSP_DAGainHighGain ;
 int HDSP_DAGainMask ;
 int HDSP_DAGainMinus10dBV ;
 int HDSP_DAGainPlus4dBu ;
 int HDSP_controlRegister ;
 int hdsp_write (struct hdsp*,int ,int ) ;

__attribute__((used)) static int hdsp_set_da_gain(struct hdsp *hdsp, int mode)
{
 hdsp->control_register &= ~HDSP_DAGainMask;
 switch (mode) {
 case 0:
  hdsp->control_register |= HDSP_DAGainHighGain;
  break;
 case 1:
  hdsp->control_register |= HDSP_DAGainPlus4dBu;
  break;
 case 2:
  hdsp->control_register |= HDSP_DAGainMinus10dBV;
  break;
 default:
  return -1;

 }
 hdsp_write(hdsp, HDSP_controlRegister, hdsp->control_register);
 return 0;
}
