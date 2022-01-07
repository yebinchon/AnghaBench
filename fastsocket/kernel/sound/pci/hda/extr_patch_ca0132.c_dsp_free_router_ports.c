
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int MEM_CONNID_DSP ;
 int VENDOR_CHIPIO_PORT_FREE_SET ;
 int VENDOR_CHIPIO_STATUS ;
 int WIDGET_CHIP_CTRL ;
 int chipio_send (struct hda_codec*,int ,int ) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int ) ;

__attribute__((used)) static int dsp_free_router_ports(struct hda_codec *codec)
{
 int status = 0;

 status = chipio_send(codec, VENDOR_CHIPIO_STATUS, 0);
 if (status < 0)
  return status;

 snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_PORT_FREE_SET,
       MEM_CONNID_DSP);

 status = chipio_send(codec, VENDOR_CHIPIO_STATUS, 0);

 return status;
}
