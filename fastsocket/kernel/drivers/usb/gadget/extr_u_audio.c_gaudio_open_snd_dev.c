
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_file {int * substream; } ;
struct gaudio_snd_dev {struct gaudio* card; int * substream; TYPE_1__* filp; } ;
struct gaudio {struct gaudio_snd_dev capture; struct gaudio_snd_dev playback; struct gaudio_snd_dev control; } ;
struct TYPE_3__ {struct snd_pcm_file* private_data; } ;


 int ENODEV ;
 int ERROR (struct gaudio*,char*,int ) ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_WRONLY ;
 int PTR_ERR (TYPE_1__*) ;
 void* filp_open (int ,int ,int ) ;
 int fn_cap ;
 int fn_cntl ;
 int fn_play ;
 int playback_default_hw_params (struct gaudio_snd_dev*) ;

__attribute__((used)) static int gaudio_open_snd_dev(struct gaudio *card)
{
 struct snd_pcm_file *pcm_file;
 struct gaudio_snd_dev *snd;

 if (!card)
  return -ENODEV;


 snd = &card->control;
 snd->filp = filp_open(fn_cntl, O_RDWR, 0);
 if (IS_ERR(snd->filp)) {
  int ret = PTR_ERR(snd->filp);
  ERROR(card, "unable to open sound control device file: %s\n",
    fn_cntl);
  snd->filp = ((void*)0);
  return ret;
 }
 snd->card = card;


 snd = &card->playback;
 snd->filp = filp_open(fn_play, O_WRONLY, 0);
 if (IS_ERR(snd->filp)) {
  ERROR(card, "No such PCM playback device: %s\n", fn_play);
  snd->filp = ((void*)0);
 }
 pcm_file = snd->filp->private_data;
 snd->substream = pcm_file->substream;
 snd->card = card;
 playback_default_hw_params(snd);


 snd = &card->capture;
 snd->filp = filp_open(fn_cap, O_RDONLY, 0);
 if (IS_ERR(snd->filp)) {
  ERROR(card, "No such PCM capture device: %s\n", fn_cap);
  snd->substream = ((void*)0);
  snd->card = ((void*)0);
 } else {
  pcm_file = snd->filp->private_data;
  snd->substream = pcm_file->substream;
  snd->card = card;
 }

 return 0;
}
