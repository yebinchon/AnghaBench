
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct cx25821_dev {TYPE_1__* i2c_bus; } ;
typedef int eeprom ;
struct TYPE_4__ {int addr; } ;
struct TYPE_3__ {scalar_t__ i2c_rc; TYPE_2__ i2c_client; } ;


 int tveeprom_read (TYPE_2__*,int *,int) ;

void cx25821_card_setup(struct cx25821_dev *dev)
{
 static u8 eeprom[256];

 if (dev->i2c_bus[0].i2c_rc == 0) {
  dev->i2c_bus[0].i2c_client.addr = 0xa0 >> 1;
  tveeprom_read(&dev->i2c_bus[0].i2c_client, eeprom,
         sizeof(eeprom));
 }
}
