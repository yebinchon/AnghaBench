
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_uart16550 {int open_lock; int filemode; } ;
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct TYPE_2__ {struct snd_uart16550* private_data; } ;


 int SERIAL_MODE_OUTPUT_TRIGGERED ;
 int snd_uart16550_output_write (struct snd_rawmidi_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_uart16550_output_trigger(struct snd_rawmidi_substream *substream,
      int up)
{
 unsigned long flags;
 struct snd_uart16550 *uart = substream->rmidi->private_data;

 spin_lock_irqsave(&uart->open_lock, flags);
 if (up)
  uart->filemode |= SERIAL_MODE_OUTPUT_TRIGGERED;
 else
  uart->filemode &= ~SERIAL_MODE_OUTPUT_TRIGGERED;
 spin_unlock_irqrestore(&uart->open_lock, flags);
 if (up)
  snd_uart16550_output_write(substream);
}
