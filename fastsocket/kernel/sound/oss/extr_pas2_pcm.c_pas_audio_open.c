
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEB (int ) ;
 int EBUSY ;
 int PAS_PCM_INTRBITS ;
 int open_mode ;
 int pas_lock ;
 int pas_set_intr (int ) ;
 int pcm_busy ;
 scalar_t__ pcm_count ;
 int printk (char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pas_audio_open(int dev, int mode)
{
 int err;
 unsigned long flags;

 DEB(printk("pas2_pcm.c: static int pas_audio_open(int mode = %X)\n", mode));

 spin_lock_irqsave(&pas_lock, flags);
 if (pcm_busy)
 {
  spin_unlock_irqrestore(&pas_lock, flags);
  return -EBUSY;
 }
 pcm_busy = 1;
 spin_unlock_irqrestore(&pas_lock, flags);

 if ((err = pas_set_intr(PAS_PCM_INTRBITS)) < 0)
  return err;


 pcm_count = 0;
 open_mode = mode;

 return 0;
}
