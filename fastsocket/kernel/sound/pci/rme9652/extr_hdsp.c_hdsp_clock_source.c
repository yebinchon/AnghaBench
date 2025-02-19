
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int control_register; int system_sample_rate; } ;


 int HDSP_ClockModeMaster ;

__attribute__((used)) static int hdsp_clock_source(struct hdsp *hdsp)
{
 if (hdsp->control_register & HDSP_ClockModeMaster) {
  switch (hdsp->system_sample_rate) {
  case 32000:
   return 1;
  case 44100:
   return 2;
  case 48000:
   return 3;
  case 64000:
   return 4;
  case 88200:
   return 5;
  case 96000:
   return 6;
  case 128000:
   return 7;
  case 176400:
   return 8;
  case 192000:
   return 9;
  default:
   return 3;
  }
 } else {
  return 0;
 }
}
