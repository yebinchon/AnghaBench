
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl3 {int dummy; } ;
struct snd_hwdep {struct snd_opl3* private_data; } ;
struct file {int dummy; } ;


 int snd_opl3_reset (struct snd_opl3*) ;

int snd_opl3_release(struct snd_hwdep * hw, struct file *file)
{
 struct snd_opl3 *opl3 = hw->private_data;

 snd_opl3_reset(opl3);
 return 0;
}
