
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sb_devc ;


 int DSP_DATA_AVAIL ;
 int DSP_READ ;
 int inb (int ) ;

int sb_dsp_get_byte(sb_devc * devc)
{
 int i;

 for (i = 1000; i; i--)
 {
  if (inb(DSP_DATA_AVAIL) & 0x80)
   return inb(DSP_READ);
 }
 return 0xffff;
}
