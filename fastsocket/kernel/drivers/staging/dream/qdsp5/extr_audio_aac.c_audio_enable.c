
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audmgr_config {int snd_method; int codec; int def_method; int rx_rate; int tx_rate; } ;
struct audio {int enabled; int audmgr; int audplay; int dec_id; scalar_t__ out_needed; scalar_t__ out_tail; } ;


 int ENODEV ;
 int RPC_AUD_DEF_CODEC_AAC ;
 int RPC_AUD_DEF_METHOD_PLAYBACK ;
 int RPC_AUD_DEF_SAMPLE_RATE_48000 ;
 int RPC_AUD_DEF_SAMPLE_RATE_NONE ;
 int RPC_SND_METHOD_MIDI ;
 int audio_dsp_event ;
 int audmgr_disable (int *) ;
 int audmgr_enable (int *,struct audmgr_config*) ;
 scalar_t__ audpp_enable (int ,int ,struct audio*) ;
 int dprintk (char*) ;
 int msm_adsp_disable (int ) ;
 scalar_t__ msm_adsp_enable (int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int audio_enable(struct audio *audio)
{
 struct audmgr_config cfg;
 int rc;

 dprintk("audio_enable()\n");

 if (audio->enabled)
  return 0;

 audio->out_tail = 0;
 audio->out_needed = 0;

 cfg.tx_rate = RPC_AUD_DEF_SAMPLE_RATE_NONE;
 cfg.rx_rate = RPC_AUD_DEF_SAMPLE_RATE_48000;
 cfg.def_method = RPC_AUD_DEF_METHOD_PLAYBACK;
 cfg.codec = RPC_AUD_DEF_CODEC_AAC;
 cfg.snd_method = RPC_SND_METHOD_MIDI;

 rc = audmgr_enable(&audio->audmgr, &cfg);
 if (rc < 0)
  return rc;

 if (msm_adsp_enable(audio->audplay)) {
  pr_err("audio: msm_adsp_enable(audplay) failed\n");
  audmgr_disable(&audio->audmgr);
  return -ENODEV;
 }

 if (audpp_enable(audio->dec_id, audio_dsp_event, audio)) {
  pr_err("audio: audpp_enable() failed\n");
    msm_adsp_disable(audio->audplay);
  audmgr_disable(&audio->audmgr);
  return -ENODEV;
 }
 audio->enabled = 1;
 return 0;
}
