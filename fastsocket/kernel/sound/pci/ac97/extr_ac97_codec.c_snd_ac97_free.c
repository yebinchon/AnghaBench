
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ac97 {size_t num; int (* private_free ) (struct snd_ac97*) ;TYPE_1__* bus; int power_work; } ;
struct TYPE_2__ {int ** codec; } ;


 int cancel_delayed_work (int *) ;
 int flush_scheduled_work () ;
 int kfree (struct snd_ac97*) ;
 int snd_ac97_proc_done (struct snd_ac97*) ;
 int stub1 (struct snd_ac97*) ;

__attribute__((used)) static int snd_ac97_free(struct snd_ac97 *ac97)
{
 if (ac97) {




  snd_ac97_proc_done(ac97);
  if (ac97->bus)
   ac97->bus->codec[ac97->num] = ((void*)0);
  if (ac97->private_free)
   ac97->private_free(ac97);
  kfree(ac97);
 }
 return 0;
}
