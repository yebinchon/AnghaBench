
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matrox_fb_info {int dummy; } ;


 int DAC_XGENIOCTRL ;
 int DAC_XGENIODATA ;
 int matroxfb_DAC_in (struct matrox_fb_info*,int ) ;
 int matroxfb_DAC_lock_irqsave (unsigned long) ;
 int matroxfb_DAC_out (struct matrox_fb_info*,int ,int) ;
 int matroxfb_DAC_unlock_irqrestore (unsigned long) ;

__attribute__((used)) static void matroxfb_set_gpio(struct matrox_fb_info* minfo, int mask, int val) {
 unsigned long flags;
 int v;

 matroxfb_DAC_lock_irqsave(flags);
 v = (matroxfb_DAC_in(minfo, DAC_XGENIOCTRL) & mask) | val;
 matroxfb_DAC_out(minfo, DAC_XGENIOCTRL, v);

 matroxfb_DAC_out(minfo, DAC_XGENIODATA, 0x00);
 matroxfb_DAC_unlock_irqrestore(flags);
}
