
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u16 ;
struct snd_cs46xx {int spos_mutex; struct dsp_spos_instance* dsp_spos_instance; } ;
struct dsp_spos_instance {void* spdif_input_volume_right; void* spdif_input_volume_left; int * asynch_rx_scb; } ;


 int cs46xx_dsp_scb_set_volume (struct snd_cs46xx*,int *,void*,void*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int cs46xx_dsp_set_iec958_volume (struct snd_cs46xx * chip, u16 left, u16 right)
{
 struct dsp_spos_instance * ins = chip->dsp_spos_instance;

 mutex_lock(&chip->spos_mutex);

 if (ins->asynch_rx_scb != ((void*)0))
  cs46xx_dsp_scb_set_volume (chip,ins->asynch_rx_scb,
        left,right);

 ins->spdif_input_volume_left = left;
 ins->spdif_input_volume_right = right;

 mutex_unlock(&chip->spos_mutex);

 return 0;
}
