
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct viadev {int dummy; } ;
struct via82xx_modem {int dummy; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {struct viadev* private_data; } ;


 int OFFSET_TYPE ;
 int VIADEV_REG (struct viadev*,int ) ;
 int VIA_REG_TYPE_AUTOSTART ;
 int VIA_REG_TYPE_INT_EOL ;
 int VIA_REG_TYPE_INT_FLAG ;
 int outb (int,int ) ;
 struct via82xx_modem* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_via82xx_channel_reset (struct via82xx_modem*,struct viadev*) ;
 int snd_via82xx_set_table_ptr (struct via82xx_modem*,struct viadev*) ;

__attribute__((used)) static int snd_via82xx_pcm_prepare(struct snd_pcm_substream *substream)
{
 struct via82xx_modem *chip = snd_pcm_substream_chip(substream);
 struct viadev *viadev = substream->runtime->private_data;

 snd_via82xx_channel_reset(chip, viadev);

 snd_via82xx_set_table_ptr(chip, viadev);
 outb(VIA_REG_TYPE_AUTOSTART|VIA_REG_TYPE_INT_EOL|VIA_REG_TYPE_INT_FLAG,
      VIADEV_REG(viadev, OFFSET_TYPE));
 return 0;
}
