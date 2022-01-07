
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long data; int function; } ;
struct snd_timer_system_private {TYPE_1__ tlist; } ;
struct snd_timer {int private_free; struct snd_timer_system_private* private_data; int hw; int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SNDRV_TIMER_GLOBAL_SYSTEM ;
 int init_timer (TYPE_1__*) ;
 struct snd_timer_system_private* kzalloc (int,int ) ;
 int snd_timer_free (struct snd_timer*) ;
 int snd_timer_free_system ;
 int snd_timer_global_new (char*,int ,struct snd_timer**) ;
 int snd_timer_global_register (struct snd_timer*) ;
 int snd_timer_s_function ;
 int snd_timer_system ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_timer_register_system(void)
{
 struct snd_timer *timer;
 struct snd_timer_system_private *priv;
 int err;

 err = snd_timer_global_new("system", SNDRV_TIMER_GLOBAL_SYSTEM, &timer);
 if (err < 0)
  return err;
 strcpy(timer->name, "system timer");
 timer->hw = snd_timer_system;
 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (priv == ((void*)0)) {
  snd_timer_free(timer);
  return -ENOMEM;
 }
 init_timer(&priv->tlist);
 priv->tlist.function = snd_timer_s_function;
 priv->tlist.data = (unsigned long) timer;
 timer->private_data = priv;
 timer->private_free = snd_timer_free_system;
 return snd_timer_global_register(timer);
}
