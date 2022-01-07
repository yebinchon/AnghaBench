
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_timer {struct snd_hrtimer* private_data; } ;
struct TYPE_2__ {int function; } ;
struct snd_hrtimer {int running; TYPE_1__ hrt; struct snd_timer* timer; } ;


 int CLOCK_MONOTONIC ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HRTIMER_MODE_REL ;
 int atomic_set (int *,int ) ;
 int hrtimer_init (TYPE_1__*,int ,int ) ;
 struct snd_hrtimer* kmalloc (int,int ) ;
 int snd_hrtimer_callback ;

__attribute__((used)) static int snd_hrtimer_open(struct snd_timer *t)
{
 struct snd_hrtimer *stime;

 stime = kmalloc(sizeof(*stime), GFP_KERNEL);
 if (!stime)
  return -ENOMEM;
 hrtimer_init(&stime->hrt, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 stime->timer = t;
 stime->hrt.function = snd_hrtimer_callback;
 atomic_set(&stime->running, 0);
 t->private_data = stime;
 return 0;
}
