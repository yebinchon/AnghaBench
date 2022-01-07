
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {int number; TYPE_1__* rmidi; } ;
struct gmidi_device {int out_triggered; } ;
struct TYPE_2__ {struct gmidi_device* private_data; } ;


 int VDBG (struct gmidi_device*,char*,int) ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void gmidi_out_trigger(struct snd_rawmidi_substream *substream, int up)
{
 struct gmidi_device *dev = substream->rmidi->private_data;

 VDBG(dev, "gmidi_out_trigger %d\n", up);
 if (up) {
  set_bit(substream->number, &dev->out_triggered);
 } else {
  clear_bit(substream->number, &dev->out_triggered);
 }
}
