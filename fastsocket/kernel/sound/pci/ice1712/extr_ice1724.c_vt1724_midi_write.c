
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_rawmidi_substream {int dummy; } ;
struct snd_ice1712 {int dummy; } ;


 int ICEREG1724 (struct snd_ice1712*,int ) ;
 int MPU_DATA ;
 int MPU_TXFIFO ;
 int SNDRV_RAWMIDI_STREAM_OUTPUT ;
 int VT1724_IRQ_MPU_TX ;
 int enable_midi_irq (struct snd_ice1712*,int ,int) ;
 struct snd_rawmidi_substream* get_rawmidi_substream (struct snd_ice1712*,int ) ;
 int inb (int ) ;
 int outb (int ,int ) ;
 int snd_rawmidi_transmit (struct snd_rawmidi_substream*,int *,int) ;
 int snd_rawmidi_transmit_empty (struct snd_rawmidi_substream*) ;

__attribute__((used)) static void vt1724_midi_write(struct snd_ice1712 *ice)
{
 struct snd_rawmidi_substream *s;
 int count, i;
 u8 buffer[32];

 s = get_rawmidi_substream(ice, SNDRV_RAWMIDI_STREAM_OUTPUT);
 count = 31 - inb(ICEREG1724(ice, MPU_TXFIFO));
 if (count > 0) {
  count = snd_rawmidi_transmit(s, buffer, count);
  for (i = 0; i < count; ++i)
   outb(buffer[i], ICEREG1724(ice, MPU_DATA));
 }



 enable_midi_irq(ice, VT1724_IRQ_MPU_TX,
   !snd_rawmidi_transmit_empty(s));
}
