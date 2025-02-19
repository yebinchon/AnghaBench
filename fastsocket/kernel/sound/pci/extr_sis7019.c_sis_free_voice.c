
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct voice {int flags; TYPE_1__* timing; } ;
struct sis7019 {int voice_lock; } ;
struct TYPE_2__ {int flags; } ;


 int VOICE_IN_USE ;
 int VOICE_SSO_TIMING ;
 int VOICE_SYNC_TIMING ;
 int __sis_unmap_silence (struct sis7019*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sis_free_voice(struct sis7019 *sis, struct voice *voice)
{
 unsigned long flags;

 spin_lock_irqsave(&sis->voice_lock, flags);
 if (voice->timing) {
  __sis_unmap_silence(sis);
  voice->timing->flags &= ~(VOICE_IN_USE | VOICE_SSO_TIMING |
      VOICE_SYNC_TIMING);
  voice->timing = ((void*)0);
 }
 voice->flags &= ~(VOICE_IN_USE | VOICE_SSO_TIMING | VOICE_SYNC_TIMING);
 spin_unlock_irqrestore(&sis->voice_lock, flags);
}
