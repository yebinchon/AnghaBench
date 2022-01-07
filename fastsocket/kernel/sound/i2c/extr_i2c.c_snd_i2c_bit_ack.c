
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_i2c_bus {int dummy; } ;


 int EIO ;
 int snd_i2c_bit_data (struct snd_i2c_bus*,int) ;
 int snd_i2c_bit_direction (struct snd_i2c_bus*,int,int) ;
 int snd_i2c_bit_set (struct snd_i2c_bus*,int,int) ;

__attribute__((used)) static int snd_i2c_bit_ack(struct snd_i2c_bus *bus)
{
 int ack;

 snd_i2c_bit_set(bus, 0, 1);
 snd_i2c_bit_set(bus, 1, 1);
 snd_i2c_bit_direction(bus, 1, 0);
 ack = snd_i2c_bit_data(bus, 1);
 snd_i2c_bit_direction(bus, 1, 1);
 snd_i2c_bit_set(bus, 0, 1);
 return ack ? -EIO : 0;
}
