
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matrox_fb_info {int dummy; } ;


 int matroxfb_DAC_in (struct matrox_fb_info*,int) ;
 int matroxfb_DAC_lock_irqsave (unsigned long) ;
 int matroxfb_DAC_out (struct matrox_fb_info*,int,int) ;
 int matroxfb_DAC_unlock_irqrestore (unsigned long) ;

__attribute__((used)) static int cve2_get_reg(struct matrox_fb_info *minfo, int reg)
{
 unsigned long flags;
 int val;

 matroxfb_DAC_lock_irqsave(flags);
 matroxfb_DAC_out(minfo, 0x87, reg);
 val = matroxfb_DAC_in(minfo, 0x88);
 matroxfb_DAC_unlock_irqrestore(flags);
 return val;
}
