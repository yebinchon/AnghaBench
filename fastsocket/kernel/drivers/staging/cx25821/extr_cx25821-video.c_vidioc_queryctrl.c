
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {int dummy; } ;
struct file {int dummy; } ;


 int cx25821_ctrl_query (struct v4l2_queryctrl*) ;

int vidioc_queryctrl(struct file *file, void *priv,
       struct v4l2_queryctrl *qctrl)
{
 return cx25821_ctrl_query(qctrl);
}
