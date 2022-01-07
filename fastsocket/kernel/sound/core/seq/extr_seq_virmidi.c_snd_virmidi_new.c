
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_virmidi_dev {int device; int client; int seq_mode; int filelist; int filelist_lock; struct snd_rawmidi* rmidi; struct snd_card* card; } ;
struct snd_rawmidi {int info_flags; int * ops; int private_free; struct snd_virmidi_dev* private_data; int id; int name; } ;
struct snd_card {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int SNDRV_RAWMIDI_INFO_DUPLEX ;
 int SNDRV_RAWMIDI_INFO_INPUT ;
 int SNDRV_RAWMIDI_INFO_OUTPUT ;
 int SNDRV_RAWMIDI_STREAM_INPUT ;
 int SNDRV_RAWMIDI_STREAM_OUTPUT ;
 int SNDRV_VIRMIDI_SEQ_DISPATCH ;
 struct snd_virmidi_dev* kzalloc (int,int ) ;
 int rwlock_init (int *) ;
 int snd_device_free (struct snd_card*,struct snd_rawmidi*) ;
 int snd_rawmidi_new (struct snd_card*,char*,int,int,int,struct snd_rawmidi**) ;
 int snd_rawmidi_set_ops (struct snd_rawmidi*,int ,int *) ;
 int snd_virmidi_free ;
 int snd_virmidi_global_ops ;
 int snd_virmidi_input_ops ;
 int snd_virmidi_output_ops ;
 int strcpy (int ,int ) ;

int snd_virmidi_new(struct snd_card *card, int device, struct snd_rawmidi **rrmidi)
{
 struct snd_rawmidi *rmidi;
 struct snd_virmidi_dev *rdev;
 int err;

 *rrmidi = ((void*)0);
 if ((err = snd_rawmidi_new(card, "VirMidi", device,
       16,
       16,
       &rmidi)) < 0)
  return err;
 strcpy(rmidi->name, rmidi->id);
 rdev = kzalloc(sizeof(*rdev), GFP_KERNEL);
 if (rdev == ((void*)0)) {
  snd_device_free(card, rmidi);
  return -ENOMEM;
 }
 rdev->card = card;
 rdev->rmidi = rmidi;
 rdev->device = device;
 rdev->client = -1;
 rwlock_init(&rdev->filelist_lock);
 INIT_LIST_HEAD(&rdev->filelist);
 rdev->seq_mode = SNDRV_VIRMIDI_SEQ_DISPATCH;
 rmidi->private_data = rdev;
 rmidi->private_free = snd_virmidi_free;
 rmidi->ops = &snd_virmidi_global_ops;
 snd_rawmidi_set_ops(rmidi, SNDRV_RAWMIDI_STREAM_INPUT, &snd_virmidi_input_ops);
 snd_rawmidi_set_ops(rmidi, SNDRV_RAWMIDI_STREAM_OUTPUT, &snd_virmidi_output_ops);
 rmidi->info_flags = SNDRV_RAWMIDI_INFO_INPUT |
       SNDRV_RAWMIDI_INFO_OUTPUT |
       SNDRV_RAWMIDI_INFO_DUPLEX;
 *rrmidi = rmidi;
 return 0;
}
