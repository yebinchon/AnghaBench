
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct go7007_file {struct go7007* go; } ;
struct go7007 {unsigned int input; TYPE_2__* board_info; int i2c_adapter; scalar_t__ i2c_adapter_online; scalar_t__ streaming; } ;
struct file {int dummy; } ;
struct TYPE_4__ {unsigned int num_inputs; TYPE_1__* inputs; } ;
struct TYPE_3__ {int audio_input; int video_input; } ;


 int EBUSY ;
 int EINVAL ;
 int VIDIOC_S_AUDIO ;
 int VIDIOC_S_INPUT ;
 int i2c_clients_command (int *,int ,int *) ;

__attribute__((used)) static int vidioc_s_input(struct file *file, void *priv, unsigned int input)
{
 struct go7007 *go = ((struct go7007_file *) priv)->go;

 if (input >= go->board_info->num_inputs)
  return -EINVAL;
 if (go->streaming)
  return -EBUSY;

 go->input = input;
 if (go->i2c_adapter_online) {
  i2c_clients_command(&go->i2c_adapter, VIDIOC_S_INPUT,
   &go->board_info->inputs[input].video_input);
  i2c_clients_command(&go->i2c_adapter, VIDIOC_S_AUDIO,
   &go->board_info->inputs[input].audio_input);
 }

 return 0;
}
