
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef long u32 ;
struct snd_au1000 {int ac97_lock; TYPE_1__* ac97_ioport; } ;
struct TYPE_2__ {long config; } ;


 long AC97C_XMIT_SLOTS_BIT ;
 long volatile AC97C_XMIT_SLOTS_MASK ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
au1000_set_ac97_xmit_slots(struct snd_au1000 *au1000, long xmit_slots)
{
 u32 volatile ac97_config;

 spin_lock(&au1000->ac97_lock);
 ac97_config = au1000->ac97_ioport->config;
 ac97_config = ac97_config & ~AC97C_XMIT_SLOTS_MASK;
 ac97_config |= (xmit_slots << AC97C_XMIT_SLOTS_BIT);
 au1000->ac97_ioport->config = ac97_config;
 spin_unlock(&au1000->ac97_lock);
}
