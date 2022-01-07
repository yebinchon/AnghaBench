
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;


 int get_kctl_0dB_offset (struct snd_kcontrol*) ;
 int put_kctl_with_value (struct snd_kcontrol*,int) ;

__attribute__((used)) static int init_slave_0dB(void *data, struct snd_kcontrol *slave)
{
 int offset = get_kctl_0dB_offset(slave);
 if (offset > 0)
  put_kctl_with_value(slave, offset);
 return 0;
}
