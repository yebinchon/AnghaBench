
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_hwdep_dsp_status {int chip_ready; int version; int num_dsps; int id; } ;
struct snd_hwdep {struct mixart_mgr* private_data; } ;
struct mixart_mgr {int dsp_loaded; } ;


 int MIXART_DRIVER_VERSION ;
 int MIXART_HARDW_FILES_MAX_INDEX ;
 int MIXART_MOTHERBOARD_ELF_INDEX ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int mixart_hwdep_dsp_status(struct snd_hwdep *hw,
       struct snd_hwdep_dsp_status *info)
{
 struct mixart_mgr *mgr = hw->private_data;

 strcpy(info->id, "miXart");
        info->num_dsps = MIXART_HARDW_FILES_MAX_INDEX;

 if (mgr->dsp_loaded & (1 << MIXART_MOTHERBOARD_ELF_INDEX))
  info->chip_ready = 1;

 info->version = MIXART_DRIVER_VERSION;
 return 0;
}
