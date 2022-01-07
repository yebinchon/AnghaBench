
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio_in {int audmgr; int audpre; int audrec; int wait; scalar_t__ enabled; } ;


 int audio_in_dsp_enable (struct audio_in*,int ) ;
 int audmgr_disable (int *) ;
 int msm_adsp_disable (int ) ;
 int wake_up (int *) ;

__attribute__((used)) static int audio_in_disable(struct audio_in *audio)
{
 if (audio->enabled) {
  audio->enabled = 0;

  audio_in_dsp_enable(audio, 0);

  wake_up(&audio->wait);

  msm_adsp_disable(audio->audrec);
  msm_adsp_disable(audio->audpre);
  audmgr_disable(&audio->audmgr);
 }
 return 0;
}
