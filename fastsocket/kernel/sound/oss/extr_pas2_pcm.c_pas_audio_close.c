
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEB (int ) ;
 int PAS_PCM_INTRBITS ;
 int PCM_NON ;
 int pas_audio_reset (int) ;
 int pas_lock ;
 int pas_remove_intr (int ) ;
 scalar_t__ pcm_busy ;
 int pcm_mode ;
 int printk (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void pas_audio_close(int dev)
{
 unsigned long flags;

 DEB(printk("pas2_pcm.c: static void pas_audio_close(void)\n"));

 spin_lock_irqsave(&pas_lock, flags);

 pas_audio_reset(dev);
 pas_remove_intr(PAS_PCM_INTRBITS);
 pcm_mode = PCM_NON;

 pcm_busy = 0;
 spin_unlock_irqrestore(&pas_lock, flags);
}
