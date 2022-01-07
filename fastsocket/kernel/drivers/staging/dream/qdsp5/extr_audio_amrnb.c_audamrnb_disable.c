
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio {scalar_t__ out_needed; int audmgr; int dec_id; int audplay; int read_wait; int write_wait; scalar_t__ enabled; } ;


 int auddec_dsp_config (struct audio*,int ) ;
 int audmgr_disable (int *) ;
 int audpp_disable (int ,struct audio*) ;
 int dprintk (char*) ;
 int msm_adsp_disable (int ) ;
 int wake_up (int *) ;

__attribute__((used)) static int audamrnb_disable(struct audio *audio)
{
 dprintk("audamrnb_disable()\n");
 if (audio->enabled) {
  audio->enabled = 0;
  auddec_dsp_config(audio, 0);
  wake_up(&audio->write_wait);
  wake_up(&audio->read_wait);
  msm_adsp_disable(audio->audplay);
  audpp_disable(audio->dec_id, audio);
  audmgr_disable(&audio->audmgr);
  audio->out_needed = 0;
 }
 return 0;
}
