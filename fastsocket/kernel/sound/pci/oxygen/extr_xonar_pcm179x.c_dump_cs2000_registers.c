
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xonar_pcm179x {int * cs2000_regs; scalar_t__ has_cs2000; } ;
struct snd_info_buffer {int dummy; } ;
struct oxygen {struct xonar_pcm179x* model_data; } ;


 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void dump_cs2000_registers(struct oxygen *chip,
      struct snd_info_buffer *buffer)
{
 struct xonar_pcm179x *data = chip->model_data;
 unsigned int i;

 if (data->has_cs2000) {
  snd_iprintf(buffer, "\nCS2000:\n00:   ");
  for (i = 1; i < 0x10; ++i)
   snd_iprintf(buffer, " %02x", data->cs2000_regs[i]);
  snd_iprintf(buffer, "\n10:");
  for (i = 0x10; i < 0x1f; ++i)
   snd_iprintf(buffer, " %02x", data->cs2000_regs[i]);
  snd_iprintf(buffer, "\n");
 }
}
