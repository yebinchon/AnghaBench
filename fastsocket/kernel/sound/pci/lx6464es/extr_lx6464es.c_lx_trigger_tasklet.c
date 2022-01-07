
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lx6464es {int lock; int playback_stream; int capture_stream; } ;


 int lx_trigger_tasklet_dispatch_stream (struct lx6464es*,int *) ;
 int snd_printdd (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void lx_trigger_tasklet(unsigned long data)
{
 struct lx6464es *chip = (struct lx6464es *)data;
 unsigned long flags;

 snd_printdd("->lx_trigger_tasklet\n");

 spin_lock_irqsave(&chip->lock, flags);
 lx_trigger_tasklet_dispatch_stream(chip, &chip->capture_stream);
 lx_trigger_tasklet_dispatch_stream(chip, &chip->playback_stream);
 spin_unlock_irqrestore(&chip->lock, flags);
}
