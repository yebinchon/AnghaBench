
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int name; int list; } ;


 int client_mutex ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ) ;

void snd_soc_unregister_dai(struct snd_soc_dai *dai)
{
 mutex_lock(&client_mutex);
 list_del(&dai->list);
 mutex_unlock(&client_mutex);

 pr_debug("Unregistered DAI '%s'\n", dai->name);
}
