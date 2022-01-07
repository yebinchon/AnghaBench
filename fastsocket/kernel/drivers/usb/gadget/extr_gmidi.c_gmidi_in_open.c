
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct TYPE_4__ {int state; } ;
struct gmidi_device {TYPE_2__ in_port; struct snd_rawmidi_substream* in_substream; } ;
struct TYPE_3__ {struct gmidi_device* private_data; } ;


 int STATE_UNKNOWN ;
 int VDBG (struct gmidi_device*,char*) ;

__attribute__((used)) static int gmidi_in_open(struct snd_rawmidi_substream *substream)
{
 struct gmidi_device *dev = substream->rmidi->private_data;

 VDBG(dev, "gmidi_in_open\n");
 dev->in_substream = substream;
 dev->in_port.state = STATE_UNKNOWN;
 return 0;
}
