
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_platform {int name; int list; } ;


 int EINVAL ;
 int INIT_LIST_HEAD (int *) ;
 int client_mutex ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int platform_list ;
 int pr_debug (char*,int ) ;
 int snd_soc_instantiate_cards () ;

int snd_soc_register_platform(struct snd_soc_platform *platform)
{
 if (!platform->name)
  return -EINVAL;

 INIT_LIST_HEAD(&platform->list);

 mutex_lock(&client_mutex);
 list_add(&platform->list, &platform_list);
 snd_soc_instantiate_cards();
 mutex_unlock(&client_mutex);

 pr_debug("Registered platform '%s'\n", platform->name);

 return 0;
}
