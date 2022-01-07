
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int control_register; } ;


 int HDSP_ADGainLowGain ;
 int HDSP_ADGainMask ;
 int HDSP_ADGainMinus10dBV ;
 int HDSP_ADGainPlus4dBu ;
 int HDSP_controlRegister ;
 int hdsp_write (struct hdsp*,int ,int ) ;

__attribute__((used)) static int hdsp_set_ad_gain(struct hdsp *hdsp, int mode)
{
 hdsp->control_register &= ~HDSP_ADGainMask;
 switch (mode) {
 case 0:
  hdsp->control_register |= HDSP_ADGainMinus10dBV;
  break;
 case 1:
  hdsp->control_register |= HDSP_ADGainPlus4dBu;
  break;
 case 2:
  hdsp->control_register |= HDSP_ADGainLowGain;
  break;
 default:
  return -1;

 }
 hdsp_write(hdsp, HDSP_controlRegister, hdsp->control_register);
 return 0;
}
