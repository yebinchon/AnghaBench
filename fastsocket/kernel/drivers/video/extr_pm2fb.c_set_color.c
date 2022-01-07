
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm2fb_par {int dummy; } ;


 int PM2R_RD_PALETTE_DATA ;
 int PM2R_RD_PALETTE_WRITE_ADDRESS ;
 int WAIT_FIFO (struct pm2fb_par*,int) ;
 int pm2_WR (struct pm2fb_par*,int ,unsigned char) ;
 int wmb () ;

__attribute__((used)) static void set_color(struct pm2fb_par *p, unsigned char regno,
        unsigned char r, unsigned char g, unsigned char b)
{
 WAIT_FIFO(p, 4);
 pm2_WR(p, PM2R_RD_PALETTE_WRITE_ADDRESS, regno);
 wmb();
 pm2_WR(p, PM2R_RD_PALETTE_DATA, r);
 wmb();
 pm2_WR(p, PM2R_RD_PALETTE_DATA, g);
 wmb();
 pm2_WR(p, PM2R_RD_PALETTE_DATA, b);
}
