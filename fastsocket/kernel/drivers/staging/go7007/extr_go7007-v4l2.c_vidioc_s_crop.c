
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_crop {scalar_t__ type; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;

__attribute__((used)) static int vidioc_s_crop(struct file *file, void *priv, struct v4l2_crop *crop)
{
 if (crop->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 return 0;
}
