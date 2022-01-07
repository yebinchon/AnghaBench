
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
typedef size_t snd_wavefront_mpu_id ;
struct TYPE_5__ {int open; int * mode; } ;
typedef TYPE_2__ snd_wavefront_midi_t ;
struct TYPE_4__ {scalar_t__ private_data; } ;


 int EIO ;
 int ENXIO ;
 int MPU401_MODE_OUTPUT ;
 TYPE_2__* get_wavefront_midi (struct snd_rawmidi_substream*) ;
 scalar_t__ snd_BUG_ON (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_wavefront_midi_output_close(struct snd_rawmidi_substream *substream)
{
 unsigned long flags;
 snd_wavefront_midi_t *midi;
 snd_wavefront_mpu_id mpu;

 if (snd_BUG_ON(!substream || !substream->rmidi))
  return -ENXIO;
 if (snd_BUG_ON(!substream->rmidi->private_data))
  return -ENXIO;

 mpu = *((snd_wavefront_mpu_id *) substream->rmidi->private_data);

 if ((midi = get_wavefront_midi (substream)) == ((void*)0))
         return -EIO;

 spin_lock_irqsave (&midi->open, flags);
 midi->mode[mpu] &= ~MPU401_MODE_OUTPUT;
 spin_unlock_irqrestore (&midi->open, flags);
 return 0;
}
