
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct gmidi_device {int dummy; } ;
struct TYPE_2__ {struct gmidi_device* private_data; } ;


 int VDBG (struct gmidi_device*,char*) ;

__attribute__((used)) static int gmidi_in_close(struct snd_rawmidi_substream *substream)
{
 struct gmidi_device *dev = substream->rmidi->private_data;

 VDBG(dev, "gmidi_in_close\n");
 return 0;
}
