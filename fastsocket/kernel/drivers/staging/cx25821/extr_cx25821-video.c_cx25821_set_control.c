
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {int type; int maximum; int minimum; } ;
struct v4l2_control {int id; int value; } ;
struct cx25821_dev {int ctl_saturation; int ctl_contrast; int ctl_hue; int ctl_bright; } ;


 int EINVAL ;







 struct v4l2_queryctrl* ctrl_by_id (int) ;
 int medusa_set_brightness (struct cx25821_dev*,int ,int) ;
 int medusa_set_contrast (struct cx25821_dev*,int ,int) ;
 int medusa_set_hue (struct cx25821_dev*,int ,int) ;
 int medusa_set_saturation (struct cx25821_dev*,int ,int) ;

int cx25821_set_control(struct cx25821_dev *dev,
   struct v4l2_control *ctl, int chan_num)
{
 int err;
 const struct v4l2_queryctrl *ctrl;

 err = -EINVAL;

 ctrl = ctrl_by_id(ctl->id);

 if (((void*)0) == ctrl)
  return err;

 switch (ctrl->type) {
 case 130:
 case 128:
 case 129:
  if (ctl->value < ctrl->minimum)
   ctl->value = ctrl->minimum;
  if (ctl->value > ctrl->maximum)
   ctl->value = ctrl->maximum;
  break;
 default:
                ;
 };

 switch (ctl->id) {
 case 134:
  dev->ctl_bright = ctl->value;
  medusa_set_brightness(dev, ctl->value, chan_num);
  break;
 case 132:
  dev->ctl_hue = ctl->value;
  medusa_set_hue(dev, ctl->value, chan_num);
  break;
 case 133:
  dev->ctl_contrast = ctl->value;
  medusa_set_contrast(dev, ctl->value, chan_num);
  break;
 case 131:
  dev->ctl_saturation = ctl->value;
  medusa_set_saturation(dev, ctl->value, chan_num);
  break;
 }

 err = 0;

 return err;
}
