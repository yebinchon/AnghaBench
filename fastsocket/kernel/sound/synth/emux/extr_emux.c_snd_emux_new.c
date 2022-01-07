
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long data; int function; } ;
struct snd_emux {int client; scalar_t__ timer_active; TYPE_1__ tlist; scalar_t__ use_time; scalar_t__ max_voices; int * oss_synth; int register_mutex; int voice_lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int init_timer (TYPE_1__*) ;
 struct snd_emux* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int snd_emux_timer_callback ;
 int spin_lock_init (int *) ;

int snd_emux_new(struct snd_emux **remu)
{
 struct snd_emux *emu;

 *remu = ((void*)0);
 emu = kzalloc(sizeof(*emu), GFP_KERNEL);
 if (emu == ((void*)0))
  return -ENOMEM;

 spin_lock_init(&emu->voice_lock);
 mutex_init(&emu->register_mutex);

 emu->client = -1;



 emu->max_voices = 0;
 emu->use_time = 0;

 init_timer(&emu->tlist);
 emu->tlist.function = snd_emux_timer_callback;
 emu->tlist.data = (unsigned long)emu;
 emu->timer_active = 0;

 *remu = emu;
 return 0;
}
