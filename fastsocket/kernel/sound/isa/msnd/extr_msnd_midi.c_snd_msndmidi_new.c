
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi {int info_flags; int name; int private_free; struct snd_msndmidi* private_data; } ;
struct snd_msndmidi {int input_lock; struct snd_msnd* dev; } ;
struct snd_msnd {struct snd_msndmidi* msndmidi_mpu; } ;
struct snd_card {struct snd_msnd* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SNDRV_RAWMIDI_INFO_INPUT ;
 int SNDRV_RAWMIDI_STREAM_INPUT ;
 struct snd_msndmidi* kcalloc (int,int,int ) ;
 int snd_device_free (struct snd_card*,struct snd_rawmidi*) ;
 int snd_msndmidi_free ;
 int snd_msndmidi_input ;
 int snd_rawmidi_new (struct snd_card*,char*,int,int,int,struct snd_rawmidi**) ;
 int snd_rawmidi_set_ops (struct snd_rawmidi*,int ,int *) ;
 int spin_lock_init (int *) ;
 int strcpy (int ,char*) ;

int snd_msndmidi_new(struct snd_card *card, int device)
{
 struct snd_msnd *chip = card->private_data;
 struct snd_msndmidi *mpu;
 struct snd_rawmidi *rmidi;
 int err;

 err = snd_rawmidi_new(card, "MSND-MIDI", device, 1, 1, &rmidi);
 if (err < 0)
  return err;
 mpu = kcalloc(1, sizeof(*mpu), GFP_KERNEL);
 if (mpu == ((void*)0)) {
  snd_device_free(card, rmidi);
  return -ENOMEM;
 }
 mpu->dev = chip;
 chip->msndmidi_mpu = mpu;
 rmidi->private_data = mpu;
 rmidi->private_free = snd_msndmidi_free;
 spin_lock_init(&mpu->input_lock);
 strcpy(rmidi->name, "MSND MIDI");
 snd_rawmidi_set_ops(rmidi, SNDRV_RAWMIDI_STREAM_INPUT,
       &snd_msndmidi_input);
 rmidi->info_flags |= SNDRV_RAWMIDI_INFO_INPUT;
 return 0;
}
