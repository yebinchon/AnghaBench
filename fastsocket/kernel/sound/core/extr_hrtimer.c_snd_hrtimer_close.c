
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer {struct snd_hrtimer* private_data; } ;
struct snd_hrtimer {int hrt; } ;


 int hrtimer_cancel (int *) ;
 int kfree (struct snd_hrtimer*) ;

__attribute__((used)) static int snd_hrtimer_close(struct snd_timer *t)
{
 struct snd_hrtimer *stime = t->private_data;

 if (stime) {
  hrtimer_cancel(&stime->hrt);
  kfree(stime);
  t->private_data = ((void*)0);
 }
 return 0;
}
