
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int name; int dev; int list; scalar_t__ instantiated; } ;


 int EINVAL ;
 int INIT_LIST_HEAD (int *) ;
 int card_list ;
 int client_mutex ;
 int dev_dbg (int ,char*,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_soc_instantiate_cards () ;

__attribute__((used)) static int snd_soc_register_card(struct snd_soc_card *card)
{
 if (!card->name || !card->dev)
  return -EINVAL;

 INIT_LIST_HEAD(&card->list);
 card->instantiated = 0;

 mutex_lock(&client_mutex);
 list_add(&card->list, &card_list);
 snd_soc_instantiate_cards();
 mutex_unlock(&client_mutex);

 dev_dbg(card->dev, "Registered card '%s'\n", card->name);

 return 0;
}
