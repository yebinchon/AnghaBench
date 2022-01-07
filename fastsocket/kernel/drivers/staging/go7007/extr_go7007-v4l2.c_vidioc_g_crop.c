
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; int left; int top; } ;
struct v4l2_crop {scalar_t__ type; TYPE_1__ c; } ;
struct go7007_file {struct go7007* go; } ;
struct go7007 {int standard; TYPE_2__* board_info; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int sensor_width; int sensor_height; } ;


 int EINVAL ;



 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;

__attribute__((used)) static int vidioc_g_crop(struct file *file, void *priv, struct v4l2_crop *crop)
{
 struct go7007 *go = ((struct go7007_file *) priv)->go;

 if (crop->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 crop->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;


 switch (go->standard) {
 case 130:
  crop->c.top = 0;
  crop->c.left = 0;
  crop->c.width = 720;
  crop->c.height = 480;
  break;
 case 128:
  crop->c.top = 0;
  crop->c.left = 0;
  crop->c.width = 720;
  crop->c.height = 576;
  break;
 case 129:
  crop->c.top = 0;
  crop->c.left = 0;
  crop->c.width = go->board_info->sensor_width;
  crop->c.height = go->board_info->sensor_height;
  break;
 }

 return 0;
}
