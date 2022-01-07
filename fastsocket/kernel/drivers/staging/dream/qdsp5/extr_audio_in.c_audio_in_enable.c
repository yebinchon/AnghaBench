
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audmgr_config {int snd_method; int codec; int def_method; int rx_rate; int tx_rate; } ;
struct audio_in {int enabled; scalar_t__ type; int audrec; int audpre; int audmgr; int samp_rate; } ;


 scalar_t__ AUDREC_CMD_TYPE_0_INDEX_WAV ;
 int ENODEV ;
 int RPC_AUD_DEF_CODEC_AAC ;
 int RPC_AUD_DEF_CODEC_PCM ;
 int RPC_AUD_DEF_METHOD_RECORD ;
 int RPC_AUD_DEF_SAMPLE_RATE_NONE ;
 int RPC_SND_METHOD_MIDI ;
 int audio_in_dsp_enable (struct audio_in*,int) ;
 int audmgr_enable (int *,struct audmgr_config*) ;
 scalar_t__ msm_adsp_enable (int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int audio_in_enable(struct audio_in *audio)
{
 struct audmgr_config cfg;
 int rc;

 if (audio->enabled)
  return 0;

 cfg.tx_rate = audio->samp_rate;
 cfg.rx_rate = RPC_AUD_DEF_SAMPLE_RATE_NONE;
 cfg.def_method = RPC_AUD_DEF_METHOD_RECORD;
 if (audio->type == AUDREC_CMD_TYPE_0_INDEX_WAV)
  cfg.codec = RPC_AUD_DEF_CODEC_PCM;
 else
  cfg.codec = RPC_AUD_DEF_CODEC_AAC;
 cfg.snd_method = RPC_SND_METHOD_MIDI;

 rc = audmgr_enable(&audio->audmgr, &cfg);
 if (rc < 0)
  return rc;

 if (msm_adsp_enable(audio->audpre)) {
  pr_err("audrec: msm_adsp_enable(audpre) failed\n");
  return -ENODEV;
 }
 if (msm_adsp_enable(audio->audrec)) {
  pr_err("audrec: msm_adsp_enable(audrec) failed\n");
  return -ENODEV;
 }

 audio->enabled = 1;
 audio_in_dsp_enable(audio, 1);

 return 0;
}
