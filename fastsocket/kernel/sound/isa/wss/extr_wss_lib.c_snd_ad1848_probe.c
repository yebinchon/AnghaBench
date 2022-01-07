
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_wss {int hardware; int reg_lock; } ;


 int CS4231P (int ) ;
 unsigned char CS4231_ENABLE_MIC_GAIN ;
 int CS4231_INIT ;
 int CS4231_LEFT_INPUT ;
 int CS4231_MISC_INFO ;
 int CS4231_MODE2 ;
 int CS4231_RIGHT_INPUT ;
 int CS4231_VERSION ;
 int ENODEV ;
 int REGSEL ;
 int STATUS ;
 unsigned short WSS_HW_AD1847 ;
 unsigned short WSS_HW_AD1848 ;
 unsigned short WSS_HW_CMI8330 ;
 unsigned short WSS_HW_CS4248 ;
 int WSS_HW_DETECT ;
 int WSS_HW_TYPE_MASK ;
 int cond_resched () ;
 unsigned long jiffies ;
 int mb () ;
 unsigned long msecs_to_jiffies (int) ;
 int snd_wss_dout (struct snd_wss*,int,int) ;
 int snd_wss_in (struct snd_wss*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int wss_inb (struct snd_wss*,int ) ;
 int wss_outb (struct snd_wss*,int ,int ) ;

__attribute__((used)) static int snd_ad1848_probe(struct snd_wss *chip)
{
 unsigned long timeout = jiffies + msecs_to_jiffies(1000);
 unsigned long flags;
 unsigned char r;
 unsigned short hardware = 0;
 int err = 0;
 int i;

 while (wss_inb(chip, CS4231P(REGSEL)) & CS4231_INIT) {
  if (time_after(jiffies, timeout))
   return -ENODEV;
  cond_resched();
 }
 spin_lock_irqsave(&chip->reg_lock, flags);


 snd_wss_dout(chip, CS4231_MISC_INFO, 0);

 snd_wss_dout(chip, CS4231_RIGHT_INPUT, 0x45);
 r = snd_wss_in(chip, CS4231_RIGHT_INPUT);
 if (r != 0x45) {

  if ((r & ~CS4231_ENABLE_MIC_GAIN) != 0x45) {
   err = -ENODEV;
   goto out;
  }
  hardware = WSS_HW_AD1847;
 } else {
  snd_wss_dout(chip, CS4231_LEFT_INPUT, 0xaa);
  r = snd_wss_in(chip, CS4231_LEFT_INPUT);

  if ((r | CS4231_ENABLE_MIC_GAIN) != 0xaa) {
   err = -ENODEV;
   goto out;
  }
 }


 wss_inb(chip, CS4231P(STATUS));
 wss_outb(chip, CS4231P(STATUS), 0);
 mb();

 if ((chip->hardware & WSS_HW_TYPE_MASK) != WSS_HW_DETECT)
  goto out;

 if (hardware) {
  chip->hardware = hardware;
  goto out;
 }

 r = snd_wss_in(chip, CS4231_MISC_INFO);


 snd_wss_dout(chip, CS4231_MISC_INFO, CS4231_MODE2);
 for (i = 0; i < 16; i++) {
  if (snd_wss_in(chip, i) != snd_wss_in(chip, 16 + i)) {

   if ((r & 0xf) != 0xa)
    goto out_mode;




   snd_wss_dout(chip, CS4231_VERSION, 0);
   r = snd_wss_in(chip, CS4231_VERSION) & 0xe7;
   if (!r)
    chip->hardware = WSS_HW_CMI8330;
   goto out_mode;
  }
 }
 if (r & 0x80)
  chip->hardware = WSS_HW_CS4248;
 else
  chip->hardware = WSS_HW_AD1848;
out_mode:
 snd_wss_dout(chip, CS4231_MISC_INFO, 0);
out:
 spin_unlock_irqrestore(&chip->reg_lock, flags);
 return err;
}
