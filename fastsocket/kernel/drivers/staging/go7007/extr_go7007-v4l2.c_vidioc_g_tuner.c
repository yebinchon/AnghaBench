
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_tuner {scalar_t__ index; } ;
struct go7007_file {struct go7007* go; } ;
struct go7007 {int i2c_adapter; int i2c_adapter_online; TYPE_1__* board_info; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int EINVAL ;
 int EIO ;
 int GO7007_BOARD_HAS_TUNER ;
 int VIDIOC_G_TUNER ;
 int i2c_clients_command (int *,int ,struct v4l2_tuner*) ;

__attribute__((used)) static int vidioc_g_tuner(struct file *file, void *priv,
    struct v4l2_tuner *t)
{
 struct go7007 *go = ((struct go7007_file *) priv)->go;

 if (!(go->board_info->flags & GO7007_BOARD_HAS_TUNER))
  return -EINVAL;
 if (t->index != 0)
  return -EINVAL;
 if (!go->i2c_adapter_online)
  return -EIO;

 i2c_clients_command(&go->i2c_adapter, VIDIOC_G_TUNER, t);

 t->index = 0;
 return 0;
}
