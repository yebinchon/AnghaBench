
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_substream {int opened; } ;


 int EBADFD ;
 int snd_rawmidi_transmit_ack (struct snd_rawmidi_substream*,int) ;
 int snd_rawmidi_transmit_peek (struct snd_rawmidi_substream*,unsigned char*,int) ;

int snd_rawmidi_transmit(struct snd_rawmidi_substream *substream,
    unsigned char *buffer, int count)
{
 if (!substream->opened)
  return -EBADFD;
 count = snd_rawmidi_transmit_peek(substream, buffer, count);
 if (count < 0)
  return count;
 return snd_rawmidi_transmit_ack(substream, count);
}
