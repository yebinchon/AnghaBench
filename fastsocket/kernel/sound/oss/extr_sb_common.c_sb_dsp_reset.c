
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ model; } ;
typedef TYPE_1__ sb_devc ;


 int DDB (int ) ;
 int DEB (int ) ;
 int DSP_DATA_AVAIL ;
 int DSP_READ ;
 int DSP_RESET ;
 scalar_t__ MDL_ESS ;
 int ess_dsp_reset (TYPE_1__*) ;
 int inb (int ) ;
 int outb (int,int ) ;
 int printk (char*) ;
 int udelay (int) ;

int sb_dsp_reset(sb_devc * devc)
{
 int loopc;

 DEB(printk("Entered sb_dsp_reset()\n"));

 if (devc->model == MDL_ESS) return ess_dsp_reset (devc);



 outb(1, DSP_RESET);

 udelay(10);
 outb(0, DSP_RESET);
 udelay(30);

 for (loopc = 0; loopc < 1000 && !(inb(DSP_DATA_AVAIL) & 0x80); loopc++);

 if (inb(DSP_READ) != 0xAA)
 {
  DDB(printk("sb: No response to RESET\n"));
  return 0;
 }

 DEB(printk("sb_dsp_reset() OK\n"));

 return 1;
}
