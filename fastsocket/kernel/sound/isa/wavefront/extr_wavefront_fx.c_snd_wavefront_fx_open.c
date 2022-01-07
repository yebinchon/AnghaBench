
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_hwdep {TYPE_1__* card; } ;
struct file {struct snd_hwdep* private_data; } ;
struct TYPE_2__ {int module; } ;


 int EFAULT ;
 int try_module_get (int ) ;

int
snd_wavefront_fx_open (struct snd_hwdep *hw, struct file *file)

{
 if (!try_module_get(hw->card->module))
  return -EFAULT;
 file->private_data = hw;
 return 0;
}
