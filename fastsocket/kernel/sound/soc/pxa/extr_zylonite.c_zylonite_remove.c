
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int clk_disable (int ) ;
 scalar_t__ clk_pout ;
 int clk_put (int ) ;
 int pout ;

__attribute__((used)) static int zylonite_remove(struct platform_device *pdev)
{
 if (clk_pout) {
  clk_disable(pout);
  clk_put(pout);
 }

 return 0;
}
