
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct i2c_msg {int addr; int len; int* buf; scalar_t__ flags; } ;
struct TYPE_6__ {TYPE_2__* shared; } ;
struct TYPE_4__ {int adapter; } ;
struct TYPE_5__ {TYPE_1__ i2c_stuff; } ;


 scalar_t__ I2C_M_RD ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;
 TYPE_3__* viaparinfo ;

int viafb_i2c_readbyte(u8 slave_addr, u8 index, u8 *pdata)
{
 u8 mm1[] = {0x00};
 struct i2c_msg msgs[2];

 *pdata = 0;
 msgs[0].flags = 0;
 msgs[1].flags = I2C_M_RD;
 msgs[0].addr = msgs[1].addr = slave_addr / 2;
 mm1[0] = index;
 msgs[0].len = 1; msgs[1].len = 1;
 msgs[0].buf = mm1; msgs[1].buf = pdata;
 i2c_transfer(&viaparinfo->shared->i2c_stuff.adapter, msgs, 2);

 return 0;
}
