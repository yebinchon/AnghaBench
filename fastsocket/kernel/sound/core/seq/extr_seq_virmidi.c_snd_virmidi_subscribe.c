
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_virmidi_dev {int flags; TYPE_1__* card; } ;
struct snd_seq_port_subscribe {int dummy; } ;
struct TYPE_2__ {int module; } ;


 int EFAULT ;
 int SNDRV_VIRMIDI_SUBSCRIBE ;
 int try_module_get (int ) ;

__attribute__((used)) static int snd_virmidi_subscribe(void *private_data,
     struct snd_seq_port_subscribe *info)
{
 struct snd_virmidi_dev *rdev;

 rdev = private_data;
 if (!try_module_get(rdev->card->module))
  return -EFAULT;
 rdev->flags |= SNDRV_VIRMIDI_SUBSCRIBE;
 return 0;
}
