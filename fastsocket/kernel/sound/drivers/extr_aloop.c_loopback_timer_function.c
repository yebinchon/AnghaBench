
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct loopback_pcm {TYPE_1__* substream; scalar_t__ period_update_pending; int cable; } ;
struct TYPE_2__ {int stream; } ;


 unsigned int loopback_pos_update (int ) ;
 int loopback_timer_start (struct loopback_pcm*) ;
 int snd_pcm_period_elapsed (TYPE_1__*) ;

__attribute__((used)) static void loopback_timer_function(unsigned long data)
{
 struct loopback_pcm *dpcm = (struct loopback_pcm *)data;
 unsigned int running;

 running = loopback_pos_update(dpcm->cable);
 if (running & (1 << dpcm->substream->stream)) {
  loopback_timer_start(dpcm);
  if (dpcm->period_update_pending) {
   dpcm->period_update_pending = 0;
   snd_pcm_period_elapsed(dpcm->substream);
  }
 }
}
