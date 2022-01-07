
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* bit; } ;
struct snd_i2c_bus {TYPE_2__ hw_ops; } ;
struct TYPE_3__ {int (* start ) (struct snd_i2c_bus*) ;} ;


 int stub1 (struct snd_i2c_bus*) ;

__attribute__((used)) static inline void snd_i2c_bit_hw_start(struct snd_i2c_bus *bus)
{
 if (bus->hw_ops.bit->start)
  bus->hw_ops.bit->start(bus);
}
