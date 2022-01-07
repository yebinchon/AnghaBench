
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int hsync_len; } ;
struct TYPE_4__ {TYPE_1__ var; } ;
struct pxafb_info {unsigned long hsync_time; TYPE_2__ fb; int clk; } ;


 unsigned int clk_get_rate (int ) ;

__attribute__((used)) static inline void set_hsync_time(struct pxafb_info *fbi, unsigned int pcd)
{
 unsigned long htime;

 if ((pcd == 0) || (fbi->fb.var.hsync_len == 0)) {
  fbi->hsync_time = 0;
  return;
 }

 htime = clk_get_rate(fbi->clk) / (pcd * fbi->fb.var.hsync_len);

 fbi->hsync_time = htime;
}
