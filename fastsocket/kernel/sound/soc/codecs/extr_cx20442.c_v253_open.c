
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct snd_soc_codec* disc_data; TYPE_1__* ops; } ;
struct snd_soc_codec {int dummy; } ;
struct TYPE_2__ {int (* write ) (struct tty_struct*,int ,int) ;} ;


 int EINVAL ;
 int EIO ;
 struct snd_soc_codec* cx20442_codec ;
 int strlen (int ) ;
 int stub1 (struct tty_struct*,int ,int) ;
 int v253_init ;

__attribute__((used)) static int v253_open(struct tty_struct *tty)
{
 struct snd_soc_codec *codec = cx20442_codec;
 int ret, len = strlen(v253_init);


 if (!tty->ops->write)
  return -EINVAL;


 tty->disc_data = codec;

 if (tty->ops->write(tty, v253_init, len) != len) {
  ret = -EIO;
  goto err;
 }

 return 0;
err:
 tty->disc_data = ((void*)0);
 return ret;
}
