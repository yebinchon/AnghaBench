
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct v4l2_queryctrl {int id; } ;
struct v4l2_control {int id; } ;
struct saa7134_go7007 {struct saa7134_dev* dev; } ;
struct saa7134_dev {TYPE_1__* tvnorm; } ;
struct go7007 {struct saa7134_go7007* hpi_context; } ;
struct TYPE_2__ {int id; } ;


 int EINVAL ;
 int V4L2_CTRL_CLASS_USER ;
 int V4L2_CTRL_ID2CLASS (int ) ;





 int saa7134_g_ctrl_internal (struct saa7134_dev*,int *,struct v4l2_control*) ;
 int saa7134_queryctrl (int *,int *,struct v4l2_queryctrl*) ;
 int saa7134_s_ctrl_internal (struct saa7134_dev*,int *,struct v4l2_control*) ;
 int saa7134_s_std_internal (struct saa7134_dev*,int *,int *) ;

__attribute__((used)) static int saa7134_go7007_send_command(struct go7007 *go, unsigned int cmd,
     void *arg)
{
 struct saa7134_go7007 *saa = go->hpi_context;
 struct saa7134_dev *dev = saa->dev;

 switch (cmd) {
 case 128:
 {
  v4l2_std_id *std = arg;
  return saa7134_s_std_internal(dev, ((void*)0), std);
 }
 case 131:
 {
  v4l2_std_id *std = arg;
  *std = dev->tvnorm->id;
  return 0;
 }
 case 130:
 {
  struct v4l2_queryctrl *ctrl = arg;
  if (V4L2_CTRL_ID2CLASS(ctrl->id) == V4L2_CTRL_CLASS_USER)
   return saa7134_queryctrl(((void*)0), ((void*)0), ctrl);
 }
 case 132:
 {
  struct v4l2_control *ctrl = arg;
  if (V4L2_CTRL_ID2CLASS(ctrl->id) == V4L2_CTRL_CLASS_USER)
   return saa7134_g_ctrl_internal(dev, ((void*)0), ctrl);
 }
 case 129:
 {
  struct v4l2_control *ctrl = arg;
  if (V4L2_CTRL_ID2CLASS(ctrl->id) == V4L2_CTRL_CLASS_USER)
   return saa7134_s_ctrl_internal(dev, ((void*)0), ctrl);
 }
 }
 return -EINVAL;

}
