
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int control_register; } ;



 int HDSP_DAGainMask ;



__attribute__((used)) static int hdsp_da_gain(struct hdsp *hdsp)
{
 switch (hdsp->control_register & HDSP_DAGainMask) {
 case 130:
  return 0;
 case 128:
  return 1;
 case 129:
  return 2;
 default:
  return 1;
 }
}
