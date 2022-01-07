
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_card_mutex ;
 int snd_cards_lock ;

int snd_card_locked(int card)
{
 int locked;

 mutex_lock(&snd_card_mutex);
 locked = snd_cards_lock & (1 << card);
 mutex_unlock(&snd_card_mutex);
 return locked;
}
