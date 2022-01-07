
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_uart16550 {scalar_t__ irq; scalar_t__ adaptor; int buff_in_count; int prev_out; unsigned char* prev_status; int open_lock; int drop_on_full; } ;
struct snd_rawmidi_substream {int number; TYPE_1__* rmidi; } ;
struct TYPE_2__ {struct snd_uart16550* private_data; } ;


 int HZ ;
 scalar_t__ SNDRV_SERIAL_GENERIC ;
 scalar_t__ SNDRV_SERIAL_MS124W_MB ;
 scalar_t__ SNDRV_SERIAL_SOUNDCANVAS ;
 int TX_BUFF_SIZE ;
 unsigned long jiffies ;
 int snd_rawmidi_transmit (struct snd_rawmidi_substream*,unsigned char*,int) ;
 int snd_rawmidi_transmit_ack (struct snd_rawmidi_substream*,int) ;
 int snd_rawmidi_transmit_peek (struct snd_rawmidi_substream*,unsigned char*,int) ;
 scalar_t__ snd_uart16550_buffer_can_write (struct snd_uart16550*,int) ;
 int snd_uart16550_io_loop (struct snd_uart16550*) ;
 int snd_uart16550_output_byte (struct snd_uart16550*,struct snd_rawmidi_substream*,unsigned char) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static void snd_uart16550_output_write(struct snd_rawmidi_substream *substream)
{
 unsigned long flags;
 unsigned char midi_byte, addr_byte;
 struct snd_uart16550 *uart = substream->rmidi->private_data;
 char first;
 static unsigned long lasttime = 0;






 spin_lock_irqsave(&uart->open_lock, flags);

 if (uart->irq < 0)
  snd_uart16550_io_loop(uart);

 if (uart->adaptor == SNDRV_SERIAL_MS124W_MB) {
  while (1) {


   if (uart->buff_in_count > TX_BUFF_SIZE - 2)
    break;
   if (snd_rawmidi_transmit(substream, &midi_byte, 1) != 1)
    break;





   addr_byte = (substream->number << 4) | 0x08;

   if (addr_byte == 0x08)
    addr_byte = 0xf8;

   snd_uart16550_output_byte(uart, substream, addr_byte);

   snd_uart16550_output_byte(uart, substream, midi_byte);
  }
 } else {
  first = 0;
  while (snd_rawmidi_transmit_peek(substream, &midi_byte, 1) == 1) {


   if (first == 0 &&
       (uart->adaptor == SNDRV_SERIAL_SOUNDCANVAS ||
        uart->adaptor == SNDRV_SERIAL_GENERIC) &&
       (uart->prev_out != substream->number ||
        time_after(jiffies, lasttime + 3*HZ))) {

    if (snd_uart16550_buffer_can_write(uart, 3)) {






     uart->prev_out = substream->number;

     snd_uart16550_output_byte(uart, substream,
          0xf5);

     snd_uart16550_output_byte(uart, substream,
          uart->prev_out + 1);


     if (midi_byte < 0x80 &&
         uart->adaptor == SNDRV_SERIAL_SOUNDCANVAS)
      snd_uart16550_output_byte(uart, substream, uart->prev_status[uart->prev_out]);
    } else if (!uart->drop_on_full)
     break;

   }


   if (!snd_uart16550_output_byte(uart, substream, midi_byte) &&
       !uart->drop_on_full )
    break;

   if (midi_byte >= 0x80 && midi_byte < 0xf0)
    uart->prev_status[uart->prev_out] = midi_byte;
   first = 1;

   snd_rawmidi_transmit_ack( substream, 1 );
  }
  lasttime = jiffies;
 }
 spin_unlock_irqrestore(&uart->open_lock, flags);
}
