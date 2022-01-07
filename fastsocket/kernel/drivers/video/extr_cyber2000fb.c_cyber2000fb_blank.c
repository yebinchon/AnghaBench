
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_info {int dummy; } ;
struct cfb_info {int ramdac_powerdown; TYPE_1__* palette; } ;
struct TYPE_2__ {int red; int green; int blue; } ;


 int EXT_SYNC_CTL ;
 unsigned int EXT_SYNC_CTL_HS_0 ;
 unsigned int EXT_SYNC_CTL_HS_NORMAL ;
 unsigned int EXT_SYNC_CTL_VS_0 ;
 unsigned int EXT_SYNC_CTL_VS_NORMAL ;




 int NR_PALETTE ;
 int RAMDAC_BYPASS ;
 int RAMDAC_DACPWRDN ;
 int RAMDAC_RAMPWRDN ;
 int cyber2000_grphw (int ,unsigned int,struct cfb_info*) ;
 int cyber2000fb_write_ramdac_ctrl (struct cfb_info*) ;
 int cyber2000fb_writeb (int,int,struct cfb_info*) ;

__attribute__((used)) static int cyber2000fb_blank(int blank, struct fb_info *info)
{
 struct cfb_info *cfb = (struct cfb_info *)info;
 unsigned int sync = 0;
 int i;

 switch (blank) {
 case 129:
  sync = EXT_SYNC_CTL_VS_0 | EXT_SYNC_CTL_HS_0;
  break;
 case 131:
  sync = EXT_SYNC_CTL_VS_NORMAL | EXT_SYNC_CTL_HS_0;
  break;
 case 128:
  sync = EXT_SYNC_CTL_VS_0 | EXT_SYNC_CTL_HS_NORMAL;
  break;
 case 130:
 default:
  break;
 }

 cyber2000_grphw(EXT_SYNC_CTL, sync, cfb);

 if (blank <= 1) {

  cfb->ramdac_powerdown &= ~(RAMDAC_DACPWRDN | RAMDAC_BYPASS |
        RAMDAC_RAMPWRDN);
  cyber2000fb_write_ramdac_ctrl(cfb);
 }




 if (blank) {
  for (i = 0; i < NR_PALETTE; i++) {
   cyber2000fb_writeb(i, 0x3c8, cfb);
   cyber2000fb_writeb(0, 0x3c9, cfb);
   cyber2000fb_writeb(0, 0x3c9, cfb);
   cyber2000fb_writeb(0, 0x3c9, cfb);
  }
 } else {
  for (i = 0; i < NR_PALETTE; i++) {
   cyber2000fb_writeb(i, 0x3c8, cfb);
   cyber2000fb_writeb(cfb->palette[i].red, 0x3c9, cfb);
   cyber2000fb_writeb(cfb->palette[i].green, 0x3c9, cfb);
   cyber2000fb_writeb(cfb->palette[i].blue, 0x3c9, cfb);
  }
 }

 if (blank >= 2) {

  cfb->ramdac_powerdown |= RAMDAC_DACPWRDN | RAMDAC_BYPASS |
      RAMDAC_RAMPWRDN;
  cyber2000fb_write_ramdac_ctrl(cfb);
 }

 return 0;
}
