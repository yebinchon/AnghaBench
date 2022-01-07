
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_buffer {int dummy; } ;
struct oxygen {int dummy; } ;


 int dump_cs2000_registers (struct oxygen*,struct snd_info_buffer*) ;
 int dump_pcm1796_registers (struct oxygen*,struct snd_info_buffer*) ;

__attribute__((used)) static void dump_st_registers(struct oxygen *chip,
         struct snd_info_buffer *buffer)
{
 dump_pcm1796_registers(chip, buffer);
 dump_cs2000_registers(chip, buffer);
}
