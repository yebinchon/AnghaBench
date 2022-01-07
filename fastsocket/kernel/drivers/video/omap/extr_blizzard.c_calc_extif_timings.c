
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int extif_clk_div; TYPE_1__* fbdev; int extif_clk_period; TYPE_2__* extif; } ;
struct TYPE_5__ {int (* get_clk_info ) (int *,int*) ;} ;
struct TYPE_4__ {int dev; } ;


 TYPE_3__ blizzard ;
 scalar_t__ calc_lut_timing (unsigned long,int) ;
 scalar_t__ calc_reg_timing (unsigned long,int) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int stub1 (int *,int*) ;

__attribute__((used)) static int calc_extif_timings(unsigned long sysclk, int *extif_mem_div)
{
 int max_clk_div;
 int div;

 blizzard.extif->get_clk_info(&blizzard.extif_clk_period, &max_clk_div);
 for (div = 1; div <= max_clk_div; div++) {
  if (calc_reg_timing(sysclk, div) == 0)
   break;
 }
 if (div > max_clk_div) {
  dev_dbg(blizzard.fbdev->dev, "reg timing failed\n");
  goto err;
 }
 *extif_mem_div = div;

 for (div = 1; div <= max_clk_div; div++) {
  if (calc_lut_timing(sysclk, div) == 0)
   break;
 }

 if (div > max_clk_div)
  goto err;

 blizzard.extif_clk_div = div;

 return 0;
err:
 dev_err(blizzard.fbdev->dev, "can't setup timings\n");
 return -1;
}
