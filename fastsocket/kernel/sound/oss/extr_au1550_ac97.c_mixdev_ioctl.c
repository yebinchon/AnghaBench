
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_codec {int (* mixer_ioctl ) (struct ac97_codec*,unsigned int,unsigned long) ;} ;


 int stub1 (struct ac97_codec*,unsigned int,unsigned long) ;

__attribute__((used)) static int
mixdev_ioctl(struct ac97_codec *codec, unsigned int cmd,
                        unsigned long arg)
{
 return codec->mixer_ioctl(codec, cmd, arg);
}
