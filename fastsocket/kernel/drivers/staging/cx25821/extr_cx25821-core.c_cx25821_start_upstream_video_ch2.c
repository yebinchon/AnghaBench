
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upstream_user_struct {int dummy; } ;
struct cx25821_dev {int _isNTSC_ch2; int pixel_format_ch2; int channel_select_ch2; int tvnorm; int vid_stdname_ch2; } ;


 int V4L2_STD_NTSC_M ;
 int V4L2_STD_PAL_BG ;
 int cx25821_vidupstream_init_ch2 (struct cx25821_dev*,int ,int ) ;
 int medusa_set_videostandard (struct cx25821_dev*) ;
 int strcmp (int ,char*) ;

void cx25821_start_upstream_video_ch2(struct cx25821_dev *dev,
          struct upstream_user_struct *up_data)
{
 dev->_isNTSC_ch2 = !strcmp(dev->vid_stdname_ch2, "NTSC") ? 1 : 0;

 dev->tvnorm = !dev->_isNTSC_ch2 ? V4L2_STD_PAL_BG : V4L2_STD_NTSC_M;
 medusa_set_videostandard(dev);

 cx25821_vidupstream_init_ch2(dev, dev->channel_select_ch2,
         dev->pixel_format_ch2);
}
