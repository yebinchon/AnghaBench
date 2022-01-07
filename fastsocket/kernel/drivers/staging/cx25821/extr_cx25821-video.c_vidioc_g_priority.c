
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct cx25821_fh {struct cx25821_dev* dev; } ;
struct cx25821_dev {int prio; } ;
typedef enum v4l2_priority { ____Placeholder_v4l2_priority } v4l2_priority ;


 int v4l2_prio_max (int *) ;

int vidioc_g_priority(struct file *file, void *f, enum v4l2_priority *p)
{
 struct cx25821_dev *dev = ((struct cx25821_fh *)f)->dev;

 *p = v4l2_prio_max(&dev->prio);

 return 0;
}
