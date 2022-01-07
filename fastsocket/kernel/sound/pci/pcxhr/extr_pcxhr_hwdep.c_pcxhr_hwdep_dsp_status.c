
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_hwdep_dsp_status {int chip_ready; int version; int num_dsps; int id; } ;
struct snd_hwdep {int dsp_loaded; struct pcxhr_mgr* private_data; } ;
struct pcxhr_mgr {int fw_file_set; } ;


 int PCXHR_DRIVER_VERSION ;
 int PCXHR_FIRMWARE_DSP_MAIN_INDEX ;
 int PCXHR_FIRMWARE_FILES_MAX_INDEX ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static int pcxhr_hwdep_dsp_status(struct snd_hwdep *hw,
      struct snd_hwdep_dsp_status *info)
{
 struct pcxhr_mgr *mgr = hw->private_data;
 sprintf(info->id, "pcxhr%d", mgr->fw_file_set);
        info->num_dsps = PCXHR_FIRMWARE_FILES_MAX_INDEX;

 if (hw->dsp_loaded & (1 << PCXHR_FIRMWARE_DSP_MAIN_INDEX))
  info->chip_ready = 1;

 info->version = PCXHR_DRIVER_VERSION;
 return 0;
}
