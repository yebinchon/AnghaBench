
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_params {int dummy; } ;
struct oxygen {int dummy; } ;


 unsigned int GPIO_CS53x1_M_DOUBLE ;
 int GPIO_CS53x1_M_MASK ;
 unsigned int GPIO_CS53x1_M_QUAD ;
 unsigned int GPIO_CS53x1_M_SINGLE ;
 int OXYGEN_GPIO_DATA ;
 int oxygen_write16_masked (struct oxygen*,int ,unsigned int,int ) ;
 int params_rate (struct snd_pcm_hw_params*) ;

void xonar_set_cs53x1_params(struct oxygen *chip,
        struct snd_pcm_hw_params *params)
{
 unsigned int value;

 if (params_rate(params) <= 54000)
  value = GPIO_CS53x1_M_SINGLE;
 else if (params_rate(params) <= 108000)
  value = GPIO_CS53x1_M_DOUBLE;
 else
  value = GPIO_CS53x1_M_QUAD;
 oxygen_write16_masked(chip, OXYGEN_GPIO_DATA,
         value, GPIO_CS53x1_M_MASK);
}
