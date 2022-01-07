
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_msndmidi {int mode; int dev; struct snd_rawmidi_substream* substream_input; } ;
struct TYPE_2__ {struct snd_msndmidi* private_data; } ;


 int HDEX_MIDI_IN_START ;
 int MSNDMIDI_MODE_BIT_INPUT ;
 int set_bit (int ,int *) ;
 int snd_msnd_enable_irq (int ) ;
 int snd_msnd_send_dsp_cmd (int ,int ) ;
 int snd_printdd (char*) ;

__attribute__((used)) static int snd_msndmidi_input_open(struct snd_rawmidi_substream *substream)
{
 struct snd_msndmidi *mpu;

 snd_printdd("snd_msndmidi_input_open()\n");

 mpu = substream->rmidi->private_data;

 mpu->substream_input = substream;

 snd_msnd_enable_irq(mpu->dev);

 snd_msnd_send_dsp_cmd(mpu->dev, HDEX_MIDI_IN_START);
 set_bit(MSNDMIDI_MODE_BIT_INPUT, &mpu->mode);
 return 0;
}
