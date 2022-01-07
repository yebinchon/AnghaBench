
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uart_cmd; } ;
struct snd_gus_card {int uart_cmd_lock; TYPE_1__ gf1; int midi_substream_output; } ;


 int snd_gf1_interrupt_midi_in (struct snd_gus_card*) ;
 int snd_gf1_uart_cmd (struct snd_gus_card*,int) ;
 int snd_gf1_uart_put (struct snd_gus_card*,char) ;
 int snd_gf1_uart_stat (struct snd_gus_card*) ;
 int snd_rawmidi_transmit (int ,char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_gf1_interrupt_midi_out(struct snd_gus_card * gus)
{
 char byte;
 unsigned long flags;


 if (snd_gf1_uart_stat(gus) & 0x01)
  snd_gf1_interrupt_midi_in(gus);

 spin_lock_irqsave(&gus->uart_cmd_lock, flags);
 if (snd_gf1_uart_stat(gus) & 0x02) {
  if (snd_rawmidi_transmit(gus->midi_substream_output, &byte, 1) != 1) {
   snd_gf1_uart_cmd(gus, gus->gf1.uart_cmd & ~0x20);
  } else {
   snd_gf1_uart_put(gus, byte);
  }
 }
 spin_unlock_irqrestore(&gus->uart_cmd_lock, flags);
}
