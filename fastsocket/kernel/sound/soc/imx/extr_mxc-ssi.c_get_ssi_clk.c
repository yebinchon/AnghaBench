
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int EINVAL ;
 int IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_get (struct device*,char*) ;
 int ssi_clk0 ;
 int ssi_clk1 ;

int get_ssi_clk(int ssi, struct device *dev)
{
 switch (ssi) {
 case 0:
  ssi_clk0 = clk_get(dev, "ssi1");
  if (IS_ERR(ssi_clk0))
   return PTR_ERR(ssi_clk0);
  return 0;
 case 1:
  ssi_clk1 = clk_get(dev, "ssi2");
  if (IS_ERR(ssi_clk1))
   return PTR_ERR(ssi_clk1);
  return 0;
 default:
  return -EINVAL;
 }
}
