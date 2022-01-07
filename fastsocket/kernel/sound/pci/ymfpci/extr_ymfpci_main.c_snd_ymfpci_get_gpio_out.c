
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_ymfpci {int reg_lock; } ;


 int YDSXGR_GPIOFUNCENABLE ;
 int YDSXGR_GPIOINSTATUS ;
 int YDSXGR_GPIOTYPECONFIG ;
 int snd_ymfpci_readw (struct snd_ymfpci*,int ) ;
 int snd_ymfpci_writew (struct snd_ymfpci*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_ymfpci_get_gpio_out(struct snd_ymfpci *chip, int pin)
{
 u16 reg, mode;
 unsigned long flags;

 spin_lock_irqsave(&chip->reg_lock, flags);
 reg = snd_ymfpci_readw(chip, YDSXGR_GPIOFUNCENABLE);
 reg &= ~(1 << (pin + 8));
 reg |= (1 << pin);
 snd_ymfpci_writew(chip, YDSXGR_GPIOFUNCENABLE, reg);

 mode = snd_ymfpci_readw(chip, YDSXGR_GPIOTYPECONFIG);
 mode &= ~(3 << (pin * 2));
 snd_ymfpci_writew(chip, YDSXGR_GPIOTYPECONFIG, mode);
 snd_ymfpci_writew(chip, YDSXGR_GPIOFUNCENABLE, reg | (1 << (pin + 8)));
 mode = snd_ymfpci_readw(chip, YDSXGR_GPIOINSTATUS);
 spin_unlock_irqrestore(&chip->reg_lock, flags);
 return (mode >> pin) & 1;
}
