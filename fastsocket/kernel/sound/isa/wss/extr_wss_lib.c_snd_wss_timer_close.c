
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_wss {int dummy; } ;
struct snd_timer {int dummy; } ;


 int WSS_MODE_TIMER ;
 struct snd_wss* snd_timer_chip (struct snd_timer*) ;
 int snd_wss_close (struct snd_wss*,int ) ;

__attribute__((used)) static int snd_wss_timer_close(struct snd_timer *timer)
{
 struct snd_wss *chip = snd_timer_chip(timer);
 snd_wss_close(chip, WSS_MODE_TIMER);
 return 0;
}
