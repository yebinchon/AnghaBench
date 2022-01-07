
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct voice {int dummy; } ;
struct sis7019 {int voice_lock; } ;


 struct voice* __sis_alloc_playback_voice (struct sis7019*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct voice *sis_alloc_playback_voice(struct sis7019 *sis)
{
 struct voice *voice;
 unsigned long flags;

 spin_lock_irqsave(&sis->voice_lock, flags);
 voice = __sis_alloc_playback_voice(sis);
 spin_unlock_irqrestore(&sis->voice_lock, flags);

 return voice;
}
