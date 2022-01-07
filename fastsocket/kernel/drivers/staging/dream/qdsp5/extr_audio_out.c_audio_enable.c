
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct audmgr_config {int snd_method; int codec; int def_method; int rx_rate; int tx_rate; } ;
struct audio {int enabled; int audmgr; scalar_t__ out_needed; scalar_t__ out_tail; TYPE_1__* out; } ;
struct TYPE_2__ {int used; } ;


 int EIO ;
 int ENODEV ;
 int PWRSINK_AUDIO ;
 int RPC_AUD_DEF_CODEC_PCM ;
 int RPC_AUD_DEF_METHOD_HOST_PCM ;
 int RPC_AUD_DEF_SAMPLE_RATE_48000 ;
 int RPC_AUD_DEF_SAMPLE_RATE_NONE ;
 int RPC_SND_METHOD_MIDI ;
 int audio_allow_sleep (struct audio*) ;
 int audio_dsp_event ;
 int audio_prevent_sleep (struct audio*) ;
 int audmgr_disable (int *) ;
 int audmgr_enable (int *,struct audmgr_config*) ;
 scalar_t__ audpp_enable (int,int ,struct audio*) ;
 int htc_pwrsink_set (int ,int) ;
 int pr_err (char*) ;
 int pr_info (char*) ;

__attribute__((used)) static int audio_enable(struct audio *audio)
{
 struct audmgr_config cfg;
 int rc;

 pr_info("audio_enable()\n");

 if (audio->enabled)
  return 0;


 if (!audio->out[0].used || !audio->out[1].used)
  return -EIO;




 audio->out_tail = 0;
 audio->out_needed = 0;

 cfg.tx_rate = RPC_AUD_DEF_SAMPLE_RATE_NONE;
 cfg.rx_rate = RPC_AUD_DEF_SAMPLE_RATE_48000;
 cfg.def_method = RPC_AUD_DEF_METHOD_HOST_PCM;
 cfg.codec = RPC_AUD_DEF_CODEC_PCM;
 cfg.snd_method = RPC_SND_METHOD_MIDI;

 audio_prevent_sleep(audio);
 rc = audmgr_enable(&audio->audmgr, &cfg);
 if (rc < 0) {
  audio_allow_sleep(audio);
  return rc;
 }

 if (audpp_enable(-1, audio_dsp_event, audio)) {
  pr_err("audio: audpp_enable() failed\n");
  audmgr_disable(&audio->audmgr);
  audio_allow_sleep(audio);
  return -ENODEV;
 }

 audio->enabled = 1;
 htc_pwrsink_set(PWRSINK_AUDIO, 100);
 return 0;
}
