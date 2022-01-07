
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upstream_user_struct {int dummy; } ;
struct cx25821_dev {int dummy; } ;


 int AUDIO_UPSTREAM_SRAM_CHANNEL_B ;
 int cx25821_audio_upstream_init (struct cx25821_dev*,int ) ;

void cx25821_start_upstream_audio(struct cx25821_dev *dev,
      struct upstream_user_struct *up_data)
{
 cx25821_audio_upstream_init(dev, AUDIO_UPSTREAM_SRAM_CHANNEL_B);
}
