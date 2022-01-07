
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int name; int dev; int list; } ;


 int client_mutex ;
 int dev_dbg (int ,char*,int ) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int snd_soc_unregister_card(struct snd_soc_card *card)
{
 mutex_lock(&client_mutex);
 list_del(&card->list);
 mutex_unlock(&client_mutex);

 dev_dbg(card->dev, "Unregistered card '%s'\n", card->name);

 return 0;
}
