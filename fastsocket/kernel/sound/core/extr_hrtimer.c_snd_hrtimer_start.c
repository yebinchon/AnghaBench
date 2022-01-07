
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer {int sticks; struct snd_hrtimer* private_data; } ;
struct snd_hrtimer {int running; int hrt; } ;


 int HRTIMER_MODE_REL ;
 int atomic_set (int *,int) ;
 int hrtimer_cancel (int *) ;
 int hrtimer_start (int *,int ,int ) ;
 int ns_to_ktime (int) ;
 int resolution ;

__attribute__((used)) static int snd_hrtimer_start(struct snd_timer *t)
{
 struct snd_hrtimer *stime = t->private_data;

 atomic_set(&stime->running, 0);
 hrtimer_cancel(&stime->hrt);
 hrtimer_start(&stime->hrt, ns_to_ktime(t->sticks * resolution),
        HRTIMER_MODE_REL);
 atomic_set(&stime->running, 1);
 return 0;
}
