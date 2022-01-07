
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ymfpci_voice {int dummy; } ;
struct snd_ymfpci {int voice_lock; } ;
typedef enum snd_ymfpci_voice_type { ____Placeholder_snd_ymfpci_voice_type } snd_ymfpci_voice_type ;


 int EINVAL ;
 int YMFPCI_PCM ;
 scalar_t__ snd_BUG_ON (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int voice_alloc (struct snd_ymfpci*,int,int,struct snd_ymfpci_voice**) ;

__attribute__((used)) static int snd_ymfpci_voice_alloc(struct snd_ymfpci *chip,
      enum snd_ymfpci_voice_type type, int pair,
      struct snd_ymfpci_voice **rvoice)
{
 unsigned long flags;
 int result;

 if (snd_BUG_ON(!rvoice))
  return -EINVAL;
 if (snd_BUG_ON(pair && type != YMFPCI_PCM))
  return -EINVAL;

 spin_lock_irqsave(&chip->voice_lock, flags);
 for (;;) {
  result = voice_alloc(chip, type, pair, rvoice);
  if (result == 0 || type != YMFPCI_PCM)
   break;

  break;
 }
 spin_unlock_irqrestore(&chip->voice_lock, flags);
 return result;
}
