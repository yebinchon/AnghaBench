
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct es1968 {int bob_freq; } ;


 int ESS_SYSCLK ;
 int __maestro_read (struct es1968*,int) ;
 int __maestro_write (struct es1968*,int,int) ;

__attribute__((used)) static void snd_es1968_bob_start(struct es1968 *chip)
{
 int prescale;
 int divide;



 for (prescale = 5; prescale < 12; prescale++)
  if (chip->bob_freq > (ESS_SYSCLK >> (prescale + 9)))
   break;


 divide = 1;
 while ((prescale > 5) && (divide < 32)) {
  prescale--;
  divide <<= 1;
 }
 divide >>= 1;


 for (; divide < 31; divide++)
  if (chip->bob_freq >
      ((ESS_SYSCLK >> (prescale + 9)) / (divide + 1))) break;


 if (divide == 0) {
  divide++;
  if (prescale > 5)
   prescale--;
 } else if (divide > 1)
  divide--;

 __maestro_write(chip, 6, 0x9000 | (prescale << 5) | divide);


 __maestro_write(chip, 0x11, __maestro_read(chip, 0x11) | 1);
 __maestro_write(chip, 0x17, __maestro_read(chip, 0x17) | 1);
}
