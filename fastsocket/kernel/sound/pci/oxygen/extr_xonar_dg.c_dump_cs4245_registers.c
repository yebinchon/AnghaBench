
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_buffer {int dummy; } ;
struct oxygen {struct dg* model_data; } ;
struct dg {int * cs4245_regs; } ;


 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void dump_cs4245_registers(struct oxygen *chip,
      struct snd_info_buffer *buffer)
{
 struct dg *data = chip->model_data;
 unsigned int i;

 snd_iprintf(buffer, "\nCS4245:");
 for (i = 1; i <= 0x10; ++i)
  snd_iprintf(buffer, " %02x", data->cs4245_regs[i]);
 snd_iprintf(buffer, "\n");
}
