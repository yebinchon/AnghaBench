
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_wss {int * timer; } ;
struct snd_timer {struct snd_wss* private_data; } ;



__attribute__((used)) static void snd_wss_timer_free(struct snd_timer *timer)
{
 struct snd_wss *chip = timer->private_data;
 chip->timer = ((void*)0);
}
