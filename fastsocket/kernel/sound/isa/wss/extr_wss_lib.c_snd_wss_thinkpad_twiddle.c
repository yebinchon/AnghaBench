
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_wss {int thinkpad_flag; } ;


 int AD1848_THINKPAD_CS4248_ENABLE_BIT ;
 int AD1848_THINKPAD_CTL_PORT1 ;
 int AD1848_THINKPAD_CTL_PORT2 ;
 int inb (int ) ;
 int outb (int,int ) ;

__attribute__((used)) static void snd_wss_thinkpad_twiddle(struct snd_wss *chip, int on)
{
 int tmp;

 if (!chip->thinkpad_flag)
  return;

 outb(0x1c, AD1848_THINKPAD_CTL_PORT1);
 tmp = inb(AD1848_THINKPAD_CTL_PORT2);

 if (on)

  tmp |= AD1848_THINKPAD_CS4248_ENABLE_BIT;
 else

  tmp &= ~AD1848_THINKPAD_CS4248_ENABLE_BIT;

 outb(tmp, AD1848_THINKPAD_CTL_PORT2);
}
