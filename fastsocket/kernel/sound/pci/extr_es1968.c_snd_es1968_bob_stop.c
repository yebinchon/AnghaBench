
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct es1968 {int dummy; } ;


 int ESM_BOB_ENABLE ;
 int ESM_BOB_START ;
 int __maestro_read (struct es1968*,int) ;
 int __maestro_write (struct es1968*,int,int ) ;

__attribute__((used)) static void snd_es1968_bob_stop(struct es1968 *chip)
{
 u16 reg;

 reg = __maestro_read(chip, 0x11);
 reg &= ~ESM_BOB_ENABLE;
 __maestro_write(chip, 0x11, reg);
 reg = __maestro_read(chip, 0x17);
 reg &= ~ESM_BOB_START;
 __maestro_write(chip, 0x17, reg);
}
