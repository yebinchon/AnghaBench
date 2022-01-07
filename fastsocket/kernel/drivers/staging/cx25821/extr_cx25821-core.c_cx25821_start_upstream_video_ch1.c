
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upstream_user_struct {int dummy; } ;
struct cx25821_dev {int _isNTSC; int pixel_format; int channel_select; int tvnorm; int vid_stdname; } ;


 int V4L2_STD_NTSC_M ;
 int V4L2_STD_PAL_BG ;
 int cx25821_vidupstream_init_ch1 (struct cx25821_dev*,int ,int ) ;
 int medusa_set_videostandard (struct cx25821_dev*) ;
 int strcmp (int ,char*) ;

void cx25821_start_upstream_video_ch1(struct cx25821_dev *dev,
          struct upstream_user_struct *up_data)
{
 dev->_isNTSC = !strcmp(dev->vid_stdname, "NTSC") ? 1 : 0;

 dev->tvnorm = !dev->_isNTSC ? V4L2_STD_PAL_BG : V4L2_STD_NTSC_M;
 medusa_set_videostandard(dev);

 cx25821_vidupstream_init_ch1(dev, dev->channel_select,
         dev->pixel_format);
}
