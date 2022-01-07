
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct es1968 {int dummy; } ;


 int IDR1_CRAM_POINTER ;
 scalar_t__ __maestro_read (struct es1968*,int ) ;
 int __maestro_write (struct es1968*,int ,scalar_t__) ;
 int snd_printd (char*) ;

__attribute__((used)) static void apu_index_set(struct es1968 *chip, u16 index)
{
 int i;
 __maestro_write(chip, IDR1_CRAM_POINTER, index);
 for (i = 0; i < 1000; i++)
  if (__maestro_read(chip, IDR1_CRAM_POINTER) == index)
   return;
 snd_printd("es1968: APU register select failed. (Timeout)\n");
}
