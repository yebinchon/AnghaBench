
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int (* poll ) (struct snd_hwdep*,struct file*,int *) ;} ;
struct snd_hwdep {TYPE_1__ ops; } ;
struct file {struct snd_hwdep* private_data; } ;
typedef int poll_table ;


 unsigned int stub1 (struct snd_hwdep*,struct file*,int *) ;

__attribute__((used)) static unsigned int snd_hwdep_poll(struct file * file, poll_table * wait)
{
 struct snd_hwdep *hw = file->private_data;
 if (hw->ops.poll)
  return hw->ops.poll(hw, file, wait);
 return 0;
}
