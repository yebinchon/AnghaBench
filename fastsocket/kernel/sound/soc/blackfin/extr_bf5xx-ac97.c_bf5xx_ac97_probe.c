
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct platform_device {int dummy; } ;
struct ac97_frame {int dummy; } ;


 int CONFIG_SND_BF5XX_RESET_GPIO_NUM ;
 int EBUSY ;
 int EFAULT ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRFS ;
 int ITFS ;
 int* cmd_count ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;
 int gpio_direction_output (int ,int) ;
 int gpio_free (int ) ;
 scalar_t__ gpio_request (int ,char*) ;
 int kfree (int ) ;
 int peripheral_free_list (int ) ;
 scalar_t__ peripheral_request_list (int ,char*) ;
 int pr_err (char*,...) ;
 int sport_config_rx (int ,int ,int,int ,int) ;
 int sport_config_tx (int ,int ,int,int ,int) ;
 int sport_handle ;
 int sport_init (int *,int,int,int *) ;
 size_t sport_num ;
 int * sport_params ;
 int * sport_req ;
 int sport_set_multichannel (int ,int,int,int) ;

__attribute__((used)) static int bf5xx_ac97_probe(struct platform_device *pdev,
       struct snd_soc_dai *dai)
{
 int ret = 0;
 cmd_count = (int *)get_zeroed_page(GFP_KERNEL);
 if (cmd_count == ((void*)0))
  return -ENOMEM;

 if (peripheral_request_list(sport_req[sport_num], "soc-audio")) {
  pr_err("Requesting Peripherals failed\n");
  ret = -EFAULT;
  goto peripheral_err;
 }
 sport_handle = sport_init(&sport_params[sport_num], 2, sizeof(struct ac97_frame), ((void*)0));

 if (!sport_handle) {
  ret = -ENODEV;
  goto sport_err;
 }




 ret = sport_set_multichannel(sport_handle, 16, 0x1F, 1);

 if (ret) {
  pr_err("SPORT is busy!\n");
  ret = -EBUSY;
  goto sport_config_err;
 }

 ret = sport_config_rx(sport_handle, IRFS, 0xF, 0, (16*16-1));
 if (ret) {
  pr_err("SPORT is busy!\n");
  ret = -EBUSY;
  goto sport_config_err;
 }

 ret = sport_config_tx(sport_handle, ITFS, 0xF, 0, (16*16-1));
 if (ret) {
  pr_err("SPORT is busy!\n");
  ret = -EBUSY;
  goto sport_config_err;
 }

 return 0;

sport_config_err:
 kfree(sport_handle);
sport_err:




 peripheral_free_list(sport_req[sport_num]);
peripheral_err:
 free_page((unsigned long)cmd_count);
 cmd_count = ((void*)0);

 return ret;
}
