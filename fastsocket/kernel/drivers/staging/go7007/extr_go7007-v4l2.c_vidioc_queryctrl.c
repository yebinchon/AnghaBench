
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {int * name; } ;
struct go7007_file {struct go7007* go; } ;
struct go7007 {int i2c_adapter; int i2c_adapter_online; } ;
struct file {int dummy; } ;


 int EIO ;
 int VIDIOC_QUERYCTRL ;
 int i2c_clients_command (int *,int ,struct v4l2_queryctrl*) ;
 int mpeg_queryctrl (struct v4l2_queryctrl*) ;

__attribute__((used)) static int vidioc_queryctrl(struct file *file, void *priv,
      struct v4l2_queryctrl *query)
{
 struct go7007 *go = ((struct go7007_file *) priv)->go;

 if (!go->i2c_adapter_online)
  return -EIO;

 i2c_clients_command(&go->i2c_adapter, VIDIOC_QUERYCTRL, query);

 return (!query->name[0]) ? mpeg_queryctrl(query) : 0;
}
