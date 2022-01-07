
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xonar_pcm179x {unsigned int dacs; int ** pcm1796_regs; } ;
struct snd_info_buffer {int dummy; } ;
struct oxygen {struct xonar_pcm179x* model_data; } ;


 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void dump_pcm1796_registers(struct oxygen *chip,
       struct snd_info_buffer *buffer)
{
 struct xonar_pcm179x *data = chip->model_data;
 unsigned int dac, i;

 for (dac = 0; dac < data->dacs; ++dac) {
  snd_iprintf(buffer, "\nPCM1796 %u:", dac + 1);
  for (i = 0; i < 5; ++i)
   snd_iprintf(buffer, " %02x",
        data->pcm1796_regs[dac][i]);
 }
 snd_iprintf(buffer, "\n");
}
