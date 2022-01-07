
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_timer {struct snd_gus_card* private_data; } ;
struct TYPE_2__ {int * timer1; } ;
struct snd_gus_card {TYPE_1__ gf1; } ;



__attribute__((used)) static void snd_gf1_timer1_free(struct snd_timer *timer)
{
 struct snd_gus_card *gus = timer->private_data;
 gus->gf1.timer1 = ((void*)0);
}
