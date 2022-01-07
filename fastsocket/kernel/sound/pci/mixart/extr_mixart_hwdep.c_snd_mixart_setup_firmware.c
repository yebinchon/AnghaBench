
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dsp_load; int dsp_status; } ;
struct snd_hwdep {int exclusive; int name; TYPE_1__ ops; struct mixart_mgr* private_data; int iface; } ;
struct mixart_mgr {TYPE_2__** chip; scalar_t__ dsp_loaded; } ;
struct TYPE_4__ {int card; } ;


 int SNDRV_HWDEP_IFACE_MIXART ;
 char* SND_MIXART_HWDEP_ID ;
 int mixart_hwdep_dsp_load ;
 int mixart_hwdep_dsp_status ;
 int snd_card_register (int ) ;
 int snd_hwdep_new (int ,char*,int ,struct snd_hwdep**) ;
 int sprintf (int ,char*) ;

int snd_mixart_setup_firmware(struct mixart_mgr *mgr)
{
 int err;
 struct snd_hwdep *hw;


 if ((err = snd_hwdep_new(mgr->chip[0]->card, SND_MIXART_HWDEP_ID, 0, &hw)) < 0)
  return err;

 hw->iface = SNDRV_HWDEP_IFACE_MIXART;
 hw->private_data = mgr;
 hw->ops.dsp_status = mixart_hwdep_dsp_status;
 hw->ops.dsp_load = mixart_hwdep_dsp_load;
 hw->exclusive = 1;
 sprintf(hw->name, SND_MIXART_HWDEP_ID);
 mgr->dsp_loaded = 0;

 return snd_card_register(mgr->chip[0]->card);
}
