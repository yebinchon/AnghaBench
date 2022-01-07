
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_i2c_bus {int dummy; } ;


 int TEA6330T_ADDR ;
 int snd_i2c_lock (struct snd_i2c_bus*) ;
 int snd_i2c_probeaddr (struct snd_i2c_bus*,int ) ;
 int snd_i2c_unlock (struct snd_i2c_bus*) ;

int snd_tea6330t_detect(struct snd_i2c_bus *bus, int equalizer)
{
 int res;

 snd_i2c_lock(bus);
 res = snd_i2c_probeaddr(bus, TEA6330T_ADDR);
 snd_i2c_unlock(bus);
 return res;
}
