
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct file {int dummy; } ;


 int CX25821_NORMS ;

int vidioc_querystd(struct file *file, void *priv, v4l2_std_id * norm)
{

 *norm = CX25821_NORMS;

 return 0;
}
