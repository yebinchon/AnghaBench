
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int width; int height; int left; int top; } ;
struct TYPE_4__ {int width; int height; int left; int top; } ;
struct v4l2_cropcap {scalar_t__ type; TYPE_2__ defrect; TYPE_1__ bounds; } ;
struct go7007_file {struct go7007* go; } ;
struct go7007 {int standard; TYPE_3__* board_info; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int sensor_width; int sensor_height; } ;


 int EINVAL ;



 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;

__attribute__((used)) static int vidioc_cropcap(struct file *file, void *priv,
     struct v4l2_cropcap *cropcap)
{
 struct go7007 *go = ((struct go7007_file *) priv)->go;

 if (cropcap->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;


 switch (go->standard) {
 case 130:
  cropcap->bounds.top = 0;
  cropcap->bounds.left = 0;
  cropcap->bounds.width = 720;
  cropcap->bounds.height = 480;
  cropcap->defrect.top = 0;
  cropcap->defrect.left = 0;
  cropcap->defrect.width = 720;
  cropcap->defrect.height = 480;
  break;
 case 128:
  cropcap->bounds.top = 0;
  cropcap->bounds.left = 0;
  cropcap->bounds.width = 720;
  cropcap->bounds.height = 576;
  cropcap->defrect.top = 0;
  cropcap->defrect.left = 0;
  cropcap->defrect.width = 720;
  cropcap->defrect.height = 576;
  break;
 case 129:
  cropcap->bounds.top = 0;
  cropcap->bounds.left = 0;
  cropcap->bounds.width = go->board_info->sensor_width;
  cropcap->bounds.height = go->board_info->sensor_height;
  cropcap->defrect.top = 0;
  cropcap->defrect.left = 0;
  cropcap->defrect.width = go->board_info->sensor_width;
  cropcap->defrect.height = go->board_info->sensor_height;
  break;
 }

 return 0;
}
