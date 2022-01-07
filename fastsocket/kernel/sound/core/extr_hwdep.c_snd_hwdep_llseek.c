
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* llseek ) (struct snd_hwdep*,struct file*,int ,int) ;} ;
struct snd_hwdep {TYPE_1__ ops; } ;
struct file {struct snd_hwdep* private_data; } ;
typedef int loff_t ;


 int ENXIO ;
 int stub1 (struct snd_hwdep*,struct file*,int ,int) ;

__attribute__((used)) static loff_t snd_hwdep_llseek(struct file * file, loff_t offset, int orig)
{
 struct snd_hwdep *hw = file->private_data;
 if (hw->ops.llseek)
  return hw->ops.llseek(hw, file, offset, orig);
 return -ENXIO;
}
