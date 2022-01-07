
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct es1968 {int dummy; } ;


 int IDR0_DATA_PORT ;
 scalar_t__ __maestro_read (struct es1968*,int ) ;
 int __maestro_write (struct es1968*,int ,scalar_t__) ;
 int snd_printd (char*) ;

__attribute__((used)) static void apu_data_set(struct es1968 *chip, u16 data)
{
 int i;
 for (i = 0; i < 1000; i++) {
  if (__maestro_read(chip, IDR0_DATA_PORT) == data)
   return;
  __maestro_write(chip, IDR0_DATA_PORT, data);
 }
 snd_printd("es1968: APU register set probably failed (Timeout)!\n");
}
