
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int free_on_last_close; int files_lock; int files_list; } ;


 scalar_t__ list_empty (int *) ;
 int snd_card_disconnect (struct snd_card*) ;
 int snd_card_do_free (struct snd_card*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int snd_card_free_when_closed(struct snd_card *card)
{
 int free_now = 0;
 int ret = snd_card_disconnect(card);
 if (ret)
  return ret;

 spin_lock(&card->files_lock);
 if (list_empty(&card->files_list))
  free_now = 1;
 else
  card->free_on_last_close = 1;
 spin_unlock(&card->files_lock);

 if (free_now)
  snd_card_do_free(card);
 return 0;
}
