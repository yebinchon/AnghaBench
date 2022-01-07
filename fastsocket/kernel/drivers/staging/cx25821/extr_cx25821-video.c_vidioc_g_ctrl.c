
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {int dummy; } ;
struct v4l2_control {int id; int value; } ;
struct file {int dummy; } ;
struct cx25821_fh {struct cx25821_dev* dev; } ;
struct cx25821_dev {int ctl_saturation; int ctl_contrast; int ctl_hue; int ctl_bright; } ;


 int EINVAL ;




 struct v4l2_queryctrl* ctrl_by_id (int) ;

int vidioc_g_ctrl(struct file *file, void *priv, struct v4l2_control *ctl)
{
 struct cx25821_dev *dev = ((struct cx25821_fh *)priv)->dev;

 const struct v4l2_queryctrl *ctrl;

 ctrl = ctrl_by_id(ctl->id);

 if (((void*)0) == ctrl)
  return -EINVAL;
 switch (ctl->id) {
 case 131:
  ctl->value = dev->ctl_bright;
  break;
 case 129:
  ctl->value = dev->ctl_hue;
  break;
 case 130:
  ctl->value = dev->ctl_contrast;
  break;
 case 128:
  ctl->value = dev->ctl_saturation;
  break;
 }
 return 0;
}
