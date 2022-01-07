
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int dummy; } ;
struct file {int dummy; } ;
struct cx25821_fh {int prio; struct cx25821_dev* dev; } ;
struct cx25821_dev {int prio; } ;


 int SRAM_CH03 ;
 int cx25821_set_control (struct cx25821_dev*,struct v4l2_control*,int ) ;
 int v4l2_prio_check (int *,int *) ;

__attribute__((used)) static int vidioc_s_ctrl(struct file *file, void *priv,
    struct v4l2_control *ctl)
{
 struct cx25821_fh *fh = priv;
 struct cx25821_dev *dev = ((struct cx25821_fh *)priv)->dev;
 int err;

 if (fh) {
  err = v4l2_prio_check(&dev->prio, &fh->prio);
  if (0 != err)
   return err;
 }

 return cx25821_set_control(dev, ctl, SRAM_CH03);
}
