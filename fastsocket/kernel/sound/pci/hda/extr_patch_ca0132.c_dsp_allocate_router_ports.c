
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct hda_codec {int dummy; } ;


 unsigned int MEM_CONNID_DSP ;
 int VENDOR_CHIPIO_PORT_ALLOC_CONFIG_SET ;
 int VENDOR_CHIPIO_PORT_ALLOC_GET ;
 int VENDOR_CHIPIO_PORT_ALLOC_SET ;
 int VENDOR_CHIPIO_STATUS ;
 int WIDGET_CHIP_CTRL ;
 int chipio_send (struct hda_codec*,int ,int ) ;
 int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,unsigned int) ;

__attribute__((used)) static int dsp_allocate_router_ports(struct hda_codec *codec,
         unsigned int num_chans,
         unsigned int ports_per_channel,
         unsigned int start_device,
         unsigned int *port_map)
{
 int status = 0;
 int res;
 u8 val;

 status = chipio_send(codec, VENDOR_CHIPIO_STATUS, 0);
 if (status < 0)
  return status;

 val = start_device << 6;
 val |= (ports_per_channel - 1) << 4;
 val |= num_chans - 1;

 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_PORT_ALLOC_CONFIG_SET,
       val);

 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_PORT_ALLOC_SET,
       MEM_CONNID_DSP);

 status = chipio_send(codec, VENDOR_CHIPIO_STATUS, 0);
 if (status < 0)
  return status;

 res = snd_hda_codec_read(codec, WIDGET_CHIP_CTRL, 0,
    VENDOR_CHIPIO_PORT_ALLOC_GET, 0);

 *port_map = res;

 return (res < 0) ? res : 0;
}
