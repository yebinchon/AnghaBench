
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm2fb_par {int dummy; } ;
struct fb_info {struct pm2fb_par* par; } ;


 int PM2R_OUT_FIFO ;
 int PM2R_OUT_FIFO_WORDS ;
 int PM2R_SYNC ;
 scalar_t__ PM2TAG (int ) ;
 int WAIT_FIFO (struct pm2fb_par*,int) ;
 int cpu_relax () ;
 int mb () ;
 scalar_t__ pm2_RD (struct pm2fb_par*,int ) ;
 int pm2_WR (struct pm2fb_par*,int ,int ) ;

__attribute__((used)) static int pm2fb_sync(struct fb_info *info)
{
 struct pm2fb_par *par = info->par;

 WAIT_FIFO(par, 1);
 pm2_WR(par, PM2R_SYNC, 0);
 mb();
 do {
  while (pm2_RD(par, PM2R_OUT_FIFO_WORDS) == 0)
   cpu_relax();
 } while (pm2_RD(par, PM2R_OUT_FIFO) != PM2TAG(PM2R_SYNC));

 return 0;
}
