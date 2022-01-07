
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int addr; } ;


 long EINVAL ;


 int WORD_LEN ;
 int mdelay (int) ;
 TYPE_1__* mt9d112_client ;
 long mt9d112_i2c_write (int ,int,int,int ) ;

__attribute__((used)) static long mt9d112_set_sensor_mode(int mode)
{
 uint16_t clock;
 long rc = 0;

 switch (mode) {
 case 129:
  rc =
   mt9d112_i2c_write(mt9d112_client->addr,
    0x338C, 0xA20C, WORD_LEN);
  if (rc < 0)
   return rc;

  rc =
   mt9d112_i2c_write(mt9d112_client->addr,
    0x3390, 0x0004, WORD_LEN);
  if (rc < 0)
   return rc;

  rc =
   mt9d112_i2c_write(mt9d112_client->addr,
    0x338C, 0xA215, WORD_LEN);
  if (rc < 0)
   return rc;

  rc =
   mt9d112_i2c_write(mt9d112_client->addr,
    0x3390, 0x0004, WORD_LEN);
  if (rc < 0)
   return rc;

  rc =
   mt9d112_i2c_write(mt9d112_client->addr,
    0x338C, 0xA20B, WORD_LEN);
  if (rc < 0)
   return rc;

  rc =
   mt9d112_i2c_write(mt9d112_client->addr,
    0x3390, 0x0000, WORD_LEN);
  if (rc < 0)
   return rc;

  clock = 0x0250;

  rc =
   mt9d112_i2c_write(mt9d112_client->addr,
    0x341C, clock, WORD_LEN);
  if (rc < 0)
   return rc;

  rc =
   mt9d112_i2c_write(mt9d112_client->addr,
    0x338C, 0xA103, WORD_LEN);
  if (rc < 0)
   return rc;

  rc =
   mt9d112_i2c_write(mt9d112_client->addr,
    0x3390, 0x0001, WORD_LEN);
  if (rc < 0)
   return rc;

  mdelay(5);
  break;

 case 128:

  rc =
   mt9d112_i2c_write(mt9d112_client->addr,
    0x341C, 0x0120, WORD_LEN);
  if (rc < 0)
   return rc;

  rc =
   mt9d112_i2c_write(mt9d112_client->addr,
    0x338C, 0xA120, WORD_LEN);
  if (rc < 0)
   return rc;

  rc =
   mt9d112_i2c_write(mt9d112_client->addr,
    0x3390, 0x0002, WORD_LEN);
  if (rc < 0)
   return rc;

  mdelay(5);

  rc =
   mt9d112_i2c_write(mt9d112_client->addr,
    0x338C, 0xA103, WORD_LEN);
  if (rc < 0)
   return rc;

  rc =
   mt9d112_i2c_write(mt9d112_client->addr,
    0x3390, 0x0002, WORD_LEN);
  if (rc < 0)
   return rc;
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
