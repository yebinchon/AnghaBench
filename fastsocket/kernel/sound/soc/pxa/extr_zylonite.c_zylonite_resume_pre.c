
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int clk_enable (int ) ;
 scalar_t__ clk_pout ;
 int dev_err (int *,char*,int) ;
 int pout ;

__attribute__((used)) static int zylonite_resume_pre(struct platform_device *pdev)
{
 int ret = 0;

 if (clk_pout) {
  ret = clk_enable(pout);
  if (ret != 0)
   dev_err(&pdev->dev, "Unable to enable CLK_POUT: %d\n",
    ret);
 }

 return ret;
}
