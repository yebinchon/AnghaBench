
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct TYPE_4__ {int active; } ;
struct gmidi_device {int tasklet; TYPE_2__ in_port; } ;
struct TYPE_3__ {struct gmidi_device* private_data; } ;


 int VDBG (struct gmidi_device*,char*,int) ;
 int tasklet_hi_schedule (int *) ;

__attribute__((used)) static void gmidi_in_trigger(struct snd_rawmidi_substream *substream, int up)
{
 struct gmidi_device *dev = substream->rmidi->private_data;

 VDBG(dev, "gmidi_in_trigger %d\n", up);
 dev->in_port.active = up;
 if (up) {
  tasklet_hi_schedule(&dev->tasklet);
 }
}
