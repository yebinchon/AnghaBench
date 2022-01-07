
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_control {int id; int value; } ;
struct snd_tea575x {int mute; TYPE_1__* ops; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int (* mute ) (struct snd_tea575x*,int ) ;} ;


 int EINVAL ;

 int stub1 (struct snd_tea575x*,int ) ;
 struct snd_tea575x* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_ctrl(struct file *file, void *priv,
     struct v4l2_control *ctrl)
{
 struct snd_tea575x *tea = video_drvdata(file);

 switch (ctrl->id) {
 case 128:
  if (tea->ops->mute) {
   tea->ops->mute(tea, ctrl->value);
   tea->mute = 1;
   return 0;
  }
 }
 return -EINVAL;
}
