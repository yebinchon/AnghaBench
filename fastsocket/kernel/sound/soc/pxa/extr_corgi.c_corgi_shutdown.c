
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int CORGI_GPIO_MUTE_L ;
 int CORGI_GPIO_MUTE_R ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static void corgi_shutdown(struct snd_pcm_substream *substream)
{

 gpio_set_value(CORGI_GPIO_MUTE_L, 1);
 gpio_set_value(CORGI_GPIO_MUTE_R, 1);
}
