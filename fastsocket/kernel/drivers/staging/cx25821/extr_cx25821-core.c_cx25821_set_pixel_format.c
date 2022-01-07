
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sram_channel {int pix_frmt; } ;
struct cx25821_dev {int * pixel_formats; } ;


 struct sram_channel* cx25821_sram_channels ;
 int cx_write (int ,int ) ;

void cx25821_set_pixel_format(struct cx25821_dev *dev, int channel_select,
         u32 format)
{
 struct sram_channel *ch;

 if (channel_select <= 7 && channel_select >= 0) {
  ch = &cx25821_sram_channels[channel_select];
  cx_write(ch->pix_frmt, format);
  dev->pixel_formats[channel_select] = format;
 }
}
