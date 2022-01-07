
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_params {int dummy; } ;
struct oxygen {int dummy; } ;


 int params_rate (struct snd_pcm_hw_params*) ;
 int set_pcm1796_params (struct oxygen*,struct snd_pcm_hw_params*) ;
 int update_cs2000_rate (struct oxygen*,int ) ;

__attribute__((used)) static void set_st_params(struct oxygen *chip,
     struct snd_pcm_hw_params *params)
{
 update_cs2000_rate(chip, params_rate(params));
 set_pcm1796_params(chip, params);
}
