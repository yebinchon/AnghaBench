
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c24xx_audio_simtec_pdata {scalar_t__* amp_gain; scalar_t__ amp_gpio; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__* amp_gain; scalar_t__ amp_gpio; } ;


 int dev_err (struct device*,char*,...) ;
 int gpio_direction_output (scalar_t__,int ) ;
 int gpio_free (scalar_t__) ;
 int gpio_request (scalar_t__,char*) ;
 TYPE_1__* pdata ;
 int spk_unmute_state (int ) ;

__attribute__((used)) static int attach_gpio_amp(struct device *dev,
      struct s3c24xx_audio_simtec_pdata *pd)
{
 int ret;


 if (pdata->amp_gain[0] > 0) {
  ret = gpio_request(pd->amp_gain[0], "gpio-amp-gain0");
  if (ret) {
   dev_err(dev, "cannot get amp gpio gain0\n");
   return ret;
  }

  ret = gpio_request(pd->amp_gain[1], "gpio-amp-gain1");
  if (ret) {
   dev_err(dev, "cannot get amp gpio gain1\n");
   gpio_free(pdata->amp_gain[0]);
   return ret;
  }

  gpio_direction_output(pd->amp_gain[0], 0);
  gpio_direction_output(pd->amp_gain[1], 0);
 }


 if (pdata->amp_gpio > 0) {
  ret = gpio_request(pd->amp_gpio, "gpio-amp");
  if (ret) {
   dev_err(dev, "cannot get amp gpio %d (%d)\n",
    pd->amp_gpio, ret);
   goto err_amp;
  }


  spk_unmute_state(0);
 }

 return 0;

err_amp:
 if (pd->amp_gain[0] > 0) {
  gpio_free(pd->amp_gain[0]);
  gpio_free(pd->amp_gain[1]);
 }

 return ret;
}
