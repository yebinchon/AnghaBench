
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dsp_load; int dsp_status; } ;
struct snd_hwdep {int exclusive; int dsp_loaded; int name; TYPE_1__ ops; struct pcxhr_mgr* private_data; int iface; } ;
struct pcxhr_mgr {TYPE_2__** chip; scalar_t__ dsp_loaded; scalar_t__ is_hr_stereo; } ;
struct TYPE_4__ {int card; } ;


 char* PCXHR_HWDEP_ID ;
 int SNDRV_HWDEP_IFACE_PCXHR ;
 int pcxhr_hwdep_dsp_load ;
 int pcxhr_hwdep_dsp_status ;
 int snd_card_register (int ) ;
 int snd_hwdep_new (int ,char*,int ,struct snd_hwdep**) ;
 int sprintf (int ,char*) ;

int pcxhr_setup_firmware(struct pcxhr_mgr *mgr)
{
 int err;
 struct snd_hwdep *hw;




 err = snd_hwdep_new(mgr->chip[0]->card, PCXHR_HWDEP_ID, 0, &hw);
 if (err < 0)
  return err;

 hw->iface = SNDRV_HWDEP_IFACE_PCXHR;
 hw->private_data = mgr;
 hw->ops.dsp_status = pcxhr_hwdep_dsp_status;
 hw->ops.dsp_load = pcxhr_hwdep_dsp_load;
 hw->exclusive = 1;

 hw->dsp_loaded = mgr->is_hr_stereo ? 1 : 0;
 mgr->dsp_loaded = 0;
 sprintf(hw->name, PCXHR_HWDEP_ID);

 err = snd_card_register(mgr->chip[0]->card);
 if (err < 0)
  return err;
 return 0;
}
