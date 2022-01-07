
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xonar_cs43xx {int * cs4362a_regs; } ;
struct snd_info_buffer {int dummy; } ;


 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void dump_cs4362a_registers(struct xonar_cs43xx *data,
       struct snd_info_buffer *buffer)
{
 unsigned int i;

 snd_iprintf(buffer, "\nCS4362A:");
 for (i = 1; i <= 14; ++i)
  snd_iprintf(buffer, " %02x", data->cs4362a_regs[i]);
 snd_iprintf(buffer, "\n");
}
