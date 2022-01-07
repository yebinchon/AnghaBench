
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uart_cmd; } ;
struct snd_gus_card {TYPE_1__ gf1; } ;


 int snd_gf1_uart_cmd (struct snd_gus_card*,int) ;

__attribute__((used)) static void snd_gf1_default_interrupt_handler_midi_in(struct snd_gus_card * gus)
{
 snd_gf1_uart_cmd(gus, gus->gf1.uart_cmd &= ~0x80);
}
