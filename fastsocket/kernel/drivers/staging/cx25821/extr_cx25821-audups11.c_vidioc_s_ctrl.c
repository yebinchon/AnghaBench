
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int dummy; } ;
struct file {int dummy; } ;
struct cx25821_fh {int prio; struct cx25821_dev* dev; } ;
struct cx25821_dev {int prio; } ;


 int v4l2_prio_check (int *,int *) ;

__attribute__((used)) static int vidioc_s_ctrl(struct file *file, void *priv,
    struct v4l2_control *ctl)
{
 struct cx25821_fh *fh = priv;
 struct cx25821_dev *dev = fh->dev;
 int err;

 if (fh) {
  err = v4l2_prio_check(&dev->prio, &fh->prio);
  if (0 != err)
   return err;
 }
 return 0;
}
