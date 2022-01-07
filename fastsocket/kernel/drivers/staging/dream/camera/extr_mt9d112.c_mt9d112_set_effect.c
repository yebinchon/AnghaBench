
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int addr; } ;
 long EINVAL ;


 int WORD_LEN ;
 TYPE_1__* mt9d112_client ;
 long mt9d112_i2c_write (int ,int,int,int ) ;

__attribute__((used)) static long mt9d112_set_effect(int mode, int effect)
{
 uint16_t reg_addr;
 uint16_t reg_val;
 long rc = 0;

 switch (mode) {
 case 129:

  reg_addr = 0x2799;
  break;

 case 128:

  reg_addr = 0x279B;
  break;

 default:
  reg_addr = 0x2799;
  break;
 }

 switch (effect) {
 case 134: {
  reg_val = 0x6440;

  rc = mt9d112_i2c_write(mt9d112_client->addr,
   0x338C, reg_addr, WORD_LEN);
  if (rc < 0)
   return rc;

  rc = mt9d112_i2c_write(mt9d112_client->addr,
   0x3390, reg_val, WORD_LEN);
  if (rc < 0)
   return rc;
 }
   break;

 case 137: {
  reg_val = 0x6441;
  rc = mt9d112_i2c_write(mt9d112_client->addr,
   0x338C, reg_addr, WORD_LEN);
  if (rc < 0)
   return rc;

  rc = mt9d112_i2c_write(mt9d112_client->addr,
   0x3390, reg_val, WORD_LEN);
  if (rc < 0)
   return rc;
 }
  break;

 case 135: {
  reg_val = 0x6443;
  rc = mt9d112_i2c_write(mt9d112_client->addr,
   0x338C, reg_addr, WORD_LEN);
  if (rc < 0)
   return rc;

  rc = mt9d112_i2c_write(mt9d112_client->addr,
   0x3390, reg_val, WORD_LEN);
  if (rc < 0)
   return rc;
 }
  break;

 case 130: {
  reg_val = 0x6445;
  rc = mt9d112_i2c_write(mt9d112_client->addr,
   0x338C, reg_addr, WORD_LEN);
  if (rc < 0)
   return rc;

  rc = mt9d112_i2c_write(mt9d112_client->addr,
   0x3390, reg_val, WORD_LEN);
  if (rc < 0)
   return rc;
 }
  break;

 case 131: {
  reg_val = 0x6442;
  rc = mt9d112_i2c_write(mt9d112_client->addr,
   0x338C, reg_addr, WORD_LEN);
  if (rc < 0)
   return rc;

  rc = mt9d112_i2c_write(mt9d112_client->addr,
   0x3390, reg_val, WORD_LEN);
  if (rc < 0)
   return rc;
 }
  break;

 case 133:
 case 136:
 case 132:
  return -EINVAL;

 default: {
  reg_val = 0x6440;
  rc = mt9d112_i2c_write(mt9d112_client->addr,
   0x338C, reg_addr, WORD_LEN);
  if (rc < 0)
   return rc;

  rc = mt9d112_i2c_write(mt9d112_client->addr,
   0x3390, reg_val, WORD_LEN);
  if (rc < 0)
   return rc;

  return -EINVAL;
 }
 }


 rc = mt9d112_i2c_write(mt9d112_client->addr,
  0x338C, 0xA103, WORD_LEN);
 if (rc < 0)
  return rc;

 rc = mt9d112_i2c_write(mt9d112_client->addr,
  0x3390, 0x0005, WORD_LEN);

 return rc;
}
