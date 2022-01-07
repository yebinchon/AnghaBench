
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio {scalar_t__ out_needed; int audmgr; int wait; scalar_t__ enabled; } ;


 int audio_allow_sleep (struct audio*) ;
 int audio_dsp_out_enable (struct audio*,int ) ;
 int audmgr_disable (int *) ;
 int audpp_disable (int,struct audio*) ;
 int pr_info (char*) ;
 int wake_up (int *) ;

__attribute__((used)) static int audio_disable(struct audio *audio)
{
 pr_info("audio_disable()\n");
 if (audio->enabled) {
  audio->enabled = 0;
  audio_dsp_out_enable(audio, 0);

  audpp_disable(-1, audio);

  wake_up(&audio->wait);
  audmgr_disable(&audio->audmgr);
  audio->out_needed = 0;
  audio_allow_sleep(audio);
 }
 return 0;
}
