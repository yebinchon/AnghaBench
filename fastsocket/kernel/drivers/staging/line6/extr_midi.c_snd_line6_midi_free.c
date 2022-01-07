
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_line6_midi {int midibuf_out; int midibuf_in; TYPE_1__* line6; } ;
struct snd_device {struct snd_line6_midi* device_data; } ;
struct TYPE_2__ {int ifcdev; } ;


 int dev_attr_midi_mask_receive ;
 int dev_attr_midi_mask_transmit ;
 int device_remove_file (int ,int *) ;
 int midibuf_destroy (int *) ;

__attribute__((used)) static int snd_line6_midi_free(struct snd_device *device)
{
 struct snd_line6_midi *line6midi = device->device_data;
 device_remove_file(line6midi->line6->ifcdev, &dev_attr_midi_mask_transmit);
 device_remove_file(line6midi->line6->ifcdev, &dev_attr_midi_mask_receive);
 midibuf_destroy(&line6midi->midibuf_in);
 midibuf_destroy(&line6midi->midibuf_out);
 return 0;
}
