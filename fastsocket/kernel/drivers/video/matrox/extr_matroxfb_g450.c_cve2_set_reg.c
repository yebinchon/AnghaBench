
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matrox_fb_info {int dummy; } ;


 int matroxfb_DAC_lock_irqsave (unsigned long) ;
 int matroxfb_DAC_out (struct matrox_fb_info*,int,int) ;
 int matroxfb_DAC_unlock_irqrestore (unsigned long) ;

__attribute__((used)) static void cve2_set_reg(struct matrox_fb_info *minfo, int reg, int val)
{
 unsigned long flags;

 matroxfb_DAC_lock_irqsave(flags);
 matroxfb_DAC_out(minfo, 0x87, reg);
 matroxfb_DAC_out(minfo, 0x88, val);
 matroxfb_DAC_unlock_irqrestore(flags);
}
