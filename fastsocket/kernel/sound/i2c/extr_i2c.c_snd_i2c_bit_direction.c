
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* bit; } ;
struct snd_i2c_bus {TYPE_2__ hw_ops; } ;
struct TYPE_3__ {int (* direction ) (struct snd_i2c_bus*,int,int) ;} ;


 int stub1 (struct snd_i2c_bus*,int,int) ;

__attribute__((used)) static void snd_i2c_bit_direction(struct snd_i2c_bus *bus, int clock, int data)
{
 if (bus->hw_ops.bit->direction)
  bus->hw_ops.bit->direction(bus, clock, data);
}
