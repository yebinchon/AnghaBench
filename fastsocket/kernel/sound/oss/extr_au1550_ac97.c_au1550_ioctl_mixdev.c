
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;
struct au1550_state {struct ac97_codec* codec; } ;
struct ac97_codec {int dummy; } ;


 int mixdev_ioctl (struct ac97_codec*,unsigned int,unsigned long) ;

__attribute__((used)) static int
au1550_ioctl_mixdev(struct inode *inode, struct file *file,
          unsigned int cmd, unsigned long arg)
{
 struct au1550_state *s = (struct au1550_state *)file->private_data;
 struct ac97_codec *codec = s->codec;

 return mixdev_ioctl(codec, cmd, arg);
}
