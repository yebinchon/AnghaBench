
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
typedef int pm_message_t ;


 int clk_disable (int ) ;
 scalar_t__ clk_pout ;
 int pout ;

__attribute__((used)) static int zylonite_suspend_post(struct platform_device *pdev,
     pm_message_t state)
{
 if (clk_pout)
  clk_disable(pout);

 return 0;
}
