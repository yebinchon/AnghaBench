
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int height; int width; } ;
struct v4l2_frmsizeenum {scalar_t__ index; TYPE_1__ discrete; int type; } ;
struct go7007_file {struct go7007* go; } ;
struct go7007 {TYPE_2__* board_info; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int flags; int sensor_flags; int sensor_height; int sensor_width; } ;


 int EINVAL ;
 int GO7007_BOARD_HAS_TUNER ;
 int GO7007_SENSOR_TV ;
 int V4L2_FRMSIZE_TYPE_DISCRETE ;

__attribute__((used)) static int vidioc_enum_framesizes(struct file *filp, void *priv,
      struct v4l2_frmsizeenum *fsize)
{
 struct go7007 *go = ((struct go7007_file *) priv)->go;


 if ((go->board_info->flags & GO7007_BOARD_HAS_TUNER) ||
     (go->board_info->sensor_flags & GO7007_SENSOR_TV))
  return -EINVAL;

 if (fsize->index > 0)
  return -EINVAL;

 fsize->type = V4L2_FRMSIZE_TYPE_DISCRETE;
 fsize->discrete.width = go->board_info->sensor_width;
 fsize->discrete.height = go->board_info->sensor_height;

 return 0;
}
