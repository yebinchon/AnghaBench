
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct go7007_file {struct go7007* go; } ;
struct go7007 {int standard; } ;
struct file {int dummy; } ;


 int EINVAL ;


 int V4L2_STD_NTSC ;
 int V4L2_STD_PAL ;

__attribute__((used)) static int vidioc_g_std(struct file *file, void *priv, v4l2_std_id *std)
{
 struct go7007 *go = ((struct go7007_file *) priv)->go;

 switch (go->standard) {
 case 129:
  *std = V4L2_STD_NTSC;
  break;
 case 128:
  *std = V4L2_STD_PAL;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
