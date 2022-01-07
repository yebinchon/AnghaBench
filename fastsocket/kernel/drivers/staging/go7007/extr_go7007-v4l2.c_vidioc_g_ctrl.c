
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {scalar_t__* name; int id; } ;
struct v4l2_control {scalar_t__* name; int id; } ;
struct go7007_file {struct go7007* go; } ;
struct go7007 {int i2c_adapter; int i2c_adapter_online; } ;
struct file {int dummy; } ;
typedef int query ;


 int EIO ;
 int VIDIOC_G_CTRL ;
 int VIDIOC_QUERYCTRL ;
 int i2c_clients_command (int *,int ,struct v4l2_queryctrl*) ;
 int memset (struct v4l2_queryctrl*,int ,int) ;
 int mpeg_g_ctrl (struct v4l2_queryctrl*,struct go7007*) ;

__attribute__((used)) static int vidioc_g_ctrl(struct file *file, void *priv,
    struct v4l2_control *ctrl)
{
 struct go7007 *go = ((struct go7007_file *) priv)->go;
 struct v4l2_queryctrl query;

 if (!go->i2c_adapter_online)
  return -EIO;

 memset(&query, 0, sizeof(query));
 query.id = ctrl->id;
 i2c_clients_command(&go->i2c_adapter, VIDIOC_QUERYCTRL, &query);
 if (query.name[0] == 0)
  return mpeg_g_ctrl(ctrl, go);
 i2c_clients_command(&go->i2c_adapter, VIDIOC_G_CTRL, ctrl);

 return 0;
}
