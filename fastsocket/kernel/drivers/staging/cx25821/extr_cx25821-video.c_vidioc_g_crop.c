
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_crop {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;

int vidioc_g_crop(struct file *file, void *priv, struct v4l2_crop *crop)
{

 return -EINVAL;
}
