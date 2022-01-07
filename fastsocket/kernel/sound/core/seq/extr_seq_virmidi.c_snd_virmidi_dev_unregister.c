
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_virmidi_dev {scalar_t__ seq_mode; } ;
struct snd_rawmidi {struct snd_virmidi_dev* private_data; } ;


 scalar_t__ SNDRV_VIRMIDI_SEQ_DISPATCH ;
 int snd_virmidi_dev_detach_seq (struct snd_virmidi_dev*) ;

__attribute__((used)) static int snd_virmidi_dev_unregister(struct snd_rawmidi *rmidi)
{
 struct snd_virmidi_dev *rdev = rmidi->private_data;

 if (rdev->seq_mode == SNDRV_VIRMIDI_SEQ_DISPATCH)
  snd_virmidi_dev_detach_seq(rdev);
 return 0;
}
