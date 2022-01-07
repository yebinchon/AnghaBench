
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct platform_device {int dummy; } ;


 int CONFIG_SND_BF5XX_RESET_GPIO_NUM ;
 int * cmd_count ;
 int free_page (unsigned long) ;
 int gpio_free (int ) ;
 int peripheral_free_list (int ) ;
 size_t sport_num ;
 int * sport_req ;

__attribute__((used)) static void bf5xx_ac97_remove(struct platform_device *pdev,
         struct snd_soc_dai *dai)
{
 free_page((unsigned long)cmd_count);
 cmd_count = ((void*)0);
 peripheral_free_list(sport_req[sport_num]);



}
