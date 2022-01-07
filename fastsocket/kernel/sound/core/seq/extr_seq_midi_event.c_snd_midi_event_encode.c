
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_event {int type; } ;
struct snd_midi_event {int dummy; } ;


 int SNDRV_SEQ_EVENT_NONE ;
 int snd_midi_event_encode_byte (struct snd_midi_event*,int ,struct snd_seq_event*) ;

long snd_midi_event_encode(struct snd_midi_event *dev, unsigned char *buf, long count,
      struct snd_seq_event *ev)
{
 long result = 0;
 int rc;

 ev->type = SNDRV_SEQ_EVENT_NONE;

 while (count-- > 0) {
  rc = snd_midi_event_encode_byte(dev, *buf++, ev);
  result++;
  if (rc < 0)
   return rc;
  else if (rc > 0)
   return result;
 }

 return result;
}
