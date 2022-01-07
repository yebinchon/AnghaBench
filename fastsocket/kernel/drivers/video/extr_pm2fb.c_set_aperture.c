
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pm2fb_par {int dummy; } ;


 int PM2F_APERTURE_BYTESWAP ;
 int PM2F_APERTURE_HALFWORDSWAP ;
 int PM2F_APERTURE_STANDARD ;
 int PM2R_APERTURE_ONE ;
 int PM2R_APERTURE_TWO ;
 int WAIT_FIFO (struct pm2fb_par*,int) ;
 int pm2_WR (struct pm2fb_par*,int ,int ) ;

__attribute__((used)) static void set_aperture(struct pm2fb_par *p, u32 depth)
{





 WAIT_FIFO(p, 2);



 switch (depth) {
 case 24:





 case 8:
  pm2_WR(p, PM2R_APERTURE_ONE, PM2F_APERTURE_STANDARD);
  break;
 case 16:
  pm2_WR(p, PM2R_APERTURE_ONE, PM2F_APERTURE_HALFWORDSWAP);
  break;
 case 32:
  pm2_WR(p, PM2R_APERTURE_ONE, PM2F_APERTURE_BYTESWAP);
  break;
 }



 pm2_WR(p, PM2R_APERTURE_TWO, PM2F_APERTURE_STANDARD);
}
