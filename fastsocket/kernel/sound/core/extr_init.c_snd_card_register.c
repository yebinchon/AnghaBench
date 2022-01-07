
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {size_t number; char* id; int * card_dev; int dev; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (int *) ;
 int MKDEV (int ,int ) ;
 int SND_MIXER_OSS_NOTIFY_REGISTER ;
 int card_id_attrs ;
 int card_number_attrs ;
 int * device_create (int ,int ,int ,struct snd_card*,char*,size_t) ;
 int device_create_file (int *,int *) ;
 int init_info_for_card (struct snd_card*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_card_mutex ;
 int snd_card_set_id_no_lock (struct snd_card*,char*) ;
 struct snd_card** snd_cards ;
 int snd_device_register_all (struct snd_card*) ;
 int snd_mixer_oss_notify_callback (struct snd_card*,int ) ;
 int sound_class ;

int snd_card_register(struct snd_card *card)
{
 int err;

 if (snd_BUG_ON(!card))
  return -EINVAL;

 if (!card->card_dev) {
  card->card_dev = device_create(sound_class, card->dev,
            MKDEV(0, 0), card,
            "card%i", card->number);
  if (IS_ERR(card->card_dev))
   card->card_dev = ((void*)0);
 }

 if ((err = snd_device_register_all(card)) < 0)
  return err;
 mutex_lock(&snd_card_mutex);
 if (snd_cards[card->number]) {

  mutex_unlock(&snd_card_mutex);
  return 0;
 }
 snd_card_set_id_no_lock(card, card->id[0] == '\0' ? ((void*)0) : card->id);
 snd_cards[card->number] = card;
 mutex_unlock(&snd_card_mutex);
 init_info_for_card(card);





 if (card->card_dev) {
  err = device_create_file(card->card_dev, &card_id_attrs);
  if (err < 0)
   return err;
  err = device_create_file(card->card_dev, &card_number_attrs);
  if (err < 0)
   return err;
 }

 return 0;
}
