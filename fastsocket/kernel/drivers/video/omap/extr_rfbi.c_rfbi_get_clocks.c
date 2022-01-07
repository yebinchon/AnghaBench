
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* dss1_fck; void* dss_ick; TYPE_1__* fbdev; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 void* clk_get (int ,char*) ;
 int clk_put (void*) ;
 int dev_err (int ,char*) ;
 TYPE_2__ rfbi ;

__attribute__((used)) static int rfbi_get_clocks(void)
{
 rfbi.dss_ick = clk_get(rfbi.fbdev->dev, "ick");
 if (IS_ERR(rfbi.dss_ick)) {
  dev_err(rfbi.fbdev->dev, "can't get ick\n");
  return PTR_ERR(rfbi.dss_ick);
 }

 rfbi.dss1_fck = clk_get(rfbi.fbdev->dev, "dss1_fck");
 if (IS_ERR(rfbi.dss1_fck)) {
  dev_err(rfbi.fbdev->dev, "can't get dss1_fck\n");
  clk_put(rfbi.dss_ick);
  return PTR_ERR(rfbi.dss1_fck);
 }

 return 0;
}
