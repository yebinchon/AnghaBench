
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_sgio2audio {int ad1843_lock; } ;
struct TYPE_4__ {int codec_control; } ;
struct TYPE_5__ {TYPE_1__ audio; } ;
struct TYPE_6__ {TYPE_2__ perif; } ;


 int CODEC_CONTROL_ADDRESS_SHIFT ;
 int CODEC_CONTROL_WORD_SHIFT ;
 TYPE_3__* mace ;
 int readq (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;
 int wmb () ;
 int writeq (int,int *) ;

__attribute__((used)) static int write_ad1843_reg(void *priv, int reg, int word)
{
 struct snd_sgio2audio *chip = priv;
 int val;
 unsigned long flags;

 spin_lock_irqsave(&chip->ad1843_lock, flags);

 writeq((reg << CODEC_CONTROL_ADDRESS_SHIFT) |
        (word << CODEC_CONTROL_WORD_SHIFT),
        &mace->perif.audio.codec_control);
 wmb();
 val = readq(&mace->perif.audio.codec_control);
 udelay(200);

 spin_unlock_irqrestore(&chip->ad1843_lock, flags);
 return 0;
}
