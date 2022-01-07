
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_wss {unsigned char mce_bit; } ;


 int CS4231P (int ) ;
 int CS4231_INIT ;
 int REG ;
 int REGSEL ;
 int mb () ;
 int udelay (int) ;
 int wss_inb (struct snd_wss*,int ) ;
 int wss_outb (struct snd_wss*,int ,unsigned char) ;

__attribute__((used)) static void snd_wss_dout(struct snd_wss *chip, unsigned char reg,
    unsigned char value)
{
 int timeout;

 for (timeout = 250;
      timeout > 0 && (wss_inb(chip, CS4231P(REGSEL)) & CS4231_INIT);
      timeout--)
  udelay(10);
 wss_outb(chip, CS4231P(REGSEL), chip->mce_bit | reg);
 wss_outb(chip, CS4231P(REG), value);
 mb();
}
