
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl4030_priv {int channels; int sample_bits; int rate; struct snd_pcm_substream* master_substream; struct snd_pcm_substream* slave_substream; } ;
struct snd_pcm_substream {int runtime; } ;


 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int SNDRV_PCM_HW_PARAM_SAMPLE_BITS ;
 int snd_pcm_hw_constraint_minmax (int ,int ,int ,int ) ;

__attribute__((used)) static void twl4030_constraints(struct twl4030_priv *twl4030,
    struct snd_pcm_substream *mst_substream)
{
 struct snd_pcm_substream *slv_substream;


 if (mst_substream == twl4030->master_substream)
  slv_substream = twl4030->slave_substream;
 else if (mst_substream == twl4030->slave_substream)
  slv_substream = twl4030->master_substream;
 else
  return;


 snd_pcm_hw_constraint_minmax(slv_substream->runtime,
    SNDRV_PCM_HW_PARAM_RATE,
    twl4030->rate,
    twl4030->rate);

 snd_pcm_hw_constraint_minmax(slv_substream->runtime,
    SNDRV_PCM_HW_PARAM_SAMPLE_BITS,
    twl4030->sample_bits,
    twl4030->sample_bits);

 snd_pcm_hw_constraint_minmax(slv_substream->runtime,
    SNDRV_PCM_HW_PARAM_CHANNELS,
    twl4030->channels,
    twl4030->channels);
}
