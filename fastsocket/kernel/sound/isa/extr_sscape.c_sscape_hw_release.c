
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soundscape {int fwlock; scalar_t__ hw_in_use; } ;
struct snd_hwdep {int dummy; } ;
struct file {int dummy; } ;


 struct soundscape* get_hwdep_soundscape (struct snd_hwdep*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int sscape_hw_release(struct snd_hwdep * hw, struct file *file)
{
 register struct soundscape *sscape = get_hwdep_soundscape(hw);
 unsigned long flags;

 spin_lock_irqsave(&sscape->fwlock, flags);
 sscape->hw_in_use = 0;
 spin_unlock_irqrestore(&sscape->fwlock, flags);
 return 0;
}
