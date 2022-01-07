
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {unsigned int dac_mclks; unsigned int adc_mclks; } ;
struct oxygen {TYPE_1__ model; } ;


 int OXYGEN_I2S_MCLK (unsigned int) ;
 unsigned int PCM_MULTICH ;
 int params_rate (struct snd_pcm_hw_params*) ;

__attribute__((used)) static u16 get_mclk(struct oxygen *chip, unsigned int channel,
      struct snd_pcm_hw_params *params)
{
 unsigned int mclks, shift;

 if (channel == PCM_MULTICH)
  mclks = chip->model.dac_mclks;
 else
  mclks = chip->model.adc_mclks;

 if (params_rate(params) <= 48000)
  shift = 0;
 else if (params_rate(params) <= 96000)
  shift = 2;
 else
  shift = 4;

 return OXYGEN_I2S_MCLK(mclks >> shift);
}
