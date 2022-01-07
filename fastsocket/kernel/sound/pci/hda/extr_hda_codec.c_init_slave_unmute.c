
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;


 int put_kctl_with_value (struct snd_kcontrol*,int) ;

__attribute__((used)) static int init_slave_unmute(void *data, struct snd_kcontrol *slave)
{
 return put_kctl_with_value(slave, 1);
}
