
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xonar_wm87x6 {int * wm8776_regs; } ;
struct snd_info_buffer {int dummy; } ;
struct oxygen {struct xonar_wm87x6* model_data; } ;


 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void dump_wm8776_registers(struct oxygen *chip,
      struct snd_info_buffer *buffer)
{
 struct xonar_wm87x6 *data = chip->model_data;
 unsigned int i;

 snd_iprintf(buffer, "\nWM8776:\n00:");
 for (i = 0; i < 0x10; ++i)
  snd_iprintf(buffer, " %03x", data->wm8776_regs[i]);
 snd_iprintf(buffer, "\n10:");
 for (i = 0x10; i < 0x17; ++i)
  snd_iprintf(buffer, " %03x", data->wm8776_regs[i]);
 snd_iprintf(buffer, "\n");
}
