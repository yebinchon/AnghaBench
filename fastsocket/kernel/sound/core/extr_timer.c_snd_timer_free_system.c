
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer {int private_data; } ;


 int kfree (int ) ;

__attribute__((used)) static void snd_timer_free_system(struct snd_timer *timer)
{
 kfree(timer->private_data);
}
