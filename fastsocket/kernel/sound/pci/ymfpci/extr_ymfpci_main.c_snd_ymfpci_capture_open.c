
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct snd_ymfpci_pcm {size_t capture_bank_number; struct snd_pcm_substream* substream; scalar_t__ type; struct snd_ymfpci* chip; } ;
struct snd_ymfpci {struct snd_pcm_substream** capture_substream; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int private_free; struct snd_ymfpci_pcm* private_data; int hw; } ;


 scalar_t__ CAPTURE_REC ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SNDRV_PCM_HW_PARAM_PERIOD_TIME ;
 int UINT_MAX ;
 struct snd_ymfpci_pcm* kzalloc (int,int ) ;
 int snd_pcm_hw_constraint_minmax (struct snd_pcm_runtime*,int ,int,int ) ;
 struct snd_ymfpci* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_ymfpci_capture ;
 int snd_ymfpci_hw_start (struct snd_ymfpci*) ;
 int snd_ymfpci_pcm_free_substream ;

__attribute__((used)) static int snd_ymfpci_capture_open(struct snd_pcm_substream *substream,
       u32 capture_bank_number)
{
 struct snd_ymfpci *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_ymfpci_pcm *ypcm;

 ypcm = kzalloc(sizeof(*ypcm), GFP_KERNEL);
 if (ypcm == ((void*)0))
  return -ENOMEM;
 ypcm->chip = chip;
 ypcm->type = capture_bank_number + CAPTURE_REC;
 ypcm->substream = substream;
 ypcm->capture_bank_number = capture_bank_number;
 chip->capture_substream[capture_bank_number] = substream;
 runtime->hw = snd_ymfpci_capture;

 snd_pcm_hw_constraint_minmax(runtime, SNDRV_PCM_HW_PARAM_PERIOD_TIME, 5333, UINT_MAX);
 runtime->private_data = ypcm;
 runtime->private_free = snd_ymfpci_pcm_free_substream;
 snd_ymfpci_hw_start(chip);
 return 0;
}
