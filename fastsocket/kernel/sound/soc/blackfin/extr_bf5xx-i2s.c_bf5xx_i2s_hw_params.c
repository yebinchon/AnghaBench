
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_6__ {int tcr2; int rcr2; int configured; int tcr1; int rcr1; } ;
struct TYPE_5__ {int wdsize; } ;


 int EBUSY ;



 TYPE_4__ bf5xx_i2s ;
 int params_format (struct snd_pcm_hw_params*) ;
 int pr_err (char*) ;
 int sport_config_rx (TYPE_1__*,int ,int,int ,int ) ;
 int sport_config_tx (TYPE_1__*,int ,int,int ,int ) ;
 TYPE_1__* sport_handle ;

__attribute__((used)) static int bf5xx_i2s_hw_params(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *params,
    struct snd_soc_dai *dai)
{
 int ret = 0;

 bf5xx_i2s.tcr2 &= ~0x1f;
 bf5xx_i2s.rcr2 &= ~0x1f;
 switch (params_format(params)) {
 case 130:
  bf5xx_i2s.tcr2 |= 15;
  bf5xx_i2s.rcr2 |= 15;
  sport_handle->wdsize = 2;
  break;
 case 129:
  bf5xx_i2s.tcr2 |= 23;
  bf5xx_i2s.rcr2 |= 23;
  sport_handle->wdsize = 3;
  break;
 case 128:
  bf5xx_i2s.tcr2 |= 31;
  bf5xx_i2s.rcr2 |= 31;
  sport_handle->wdsize = 4;
  break;
 }

 if (!bf5xx_i2s.configured) {
  bf5xx_i2s.configured = 1;
  ret = sport_config_rx(sport_handle, bf5xx_i2s.rcr1,
          bf5xx_i2s.rcr2, 0, 0);
  if (ret) {
   pr_err("SPORT is busy!\n");
   return -EBUSY;
  }

  ret = sport_config_tx(sport_handle, bf5xx_i2s.tcr1,
          bf5xx_i2s.tcr2, 0, 0);
  if (ret) {
   pr_err("SPORT is busy!\n");
   return -EBUSY;
  }
 }

 return 0;
}
