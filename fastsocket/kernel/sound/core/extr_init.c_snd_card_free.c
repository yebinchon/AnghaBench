
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int files_list; int shutdown_sleep; } ;


 int list_empty (int *) ;
 int snd_card_disconnect (struct snd_card*) ;
 int snd_card_do_free (struct snd_card*) ;
 int wait_event (int ,int ) ;

int snd_card_free(struct snd_card *card)
{
 int ret = snd_card_disconnect(card);
 if (ret)
  return ret;


 wait_event(card->shutdown_sleep, list_empty(&card->files_list));
 snd_card_do_free(card);
 return 0;
}
