
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_3__ {int * private_data; int * dev; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 scalar_t__ SACR0 ;
 scalar_t__ SACR0_RST ;
 int SACR1 ;
 int SACR1_DREC ;
 int SACR1_DRPL ;
 int SAIMR ;
 int SAIMR_RFS ;
 int SAIMR_TFS ;
 int clk_get (int *,char*) ;
 int clk_i2s ;
 int clk_put (int ) ;
 TYPE_1__ pxa_i2s_dai ;
 int snd_soc_register_dai (TYPE_1__*) ;

__attribute__((used)) static int pxa2xx_i2s_probe(struct platform_device *dev)
{
 int ret;

 clk_i2s = clk_get(&dev->dev, "I2SCLK");
 if (IS_ERR(clk_i2s))
  return PTR_ERR(clk_i2s);

 pxa_i2s_dai.dev = &dev->dev;
 pxa_i2s_dai.private_data = ((void*)0);
 ret = snd_soc_register_dai(&pxa_i2s_dai);
 if (ret != 0)
  clk_put(clk_i2s);







 SACR0 = SACR0_RST;
 SACR0 = 0;

 SACR1 = SACR1_DRPL | SACR1_DREC;

 SAIMR &= ~(SAIMR_RFS | SAIMR_TFS);

 return ret;
}
