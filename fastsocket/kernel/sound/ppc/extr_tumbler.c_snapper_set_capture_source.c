
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int client; } ;
struct pmac_tumbler {int acs; TYPE_1__ i2c; scalar_t__ capture_source; } ;


 int ENODEV ;
 int TAS_REG_ACS ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;

__attribute__((used)) static int snapper_set_capture_source(struct pmac_tumbler *mix)
{
 if (! mix->i2c.client)
  return -ENODEV;
 if (mix->capture_source)
  mix->acs = mix->acs |= 2;
 else
  mix->acs &= ~2;
 return i2c_smbus_write_byte_data(mix->i2c.client, TAS_REG_ACS, mix->acs);
}
