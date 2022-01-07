
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt9d112_i2c_reg_conf {scalar_t__ mdelay_time; int width; int wdata; int waddr; } ;
typedef scalar_t__ int32_t ;
struct TYPE_2__ {int addr; } ;


 scalar_t__ EIO ;
 int mdelay (scalar_t__) ;
 TYPE_1__* mt9d112_client ;
 scalar_t__ mt9d112_i2c_write (int ,int ,int ,int ) ;

__attribute__((used)) static int32_t mt9d112_i2c_write_table(
 struct mt9d112_i2c_reg_conf const *reg_conf_tbl,
 int num_of_items_in_table)
{
 int i;
 int32_t rc = -EIO;

 for (i = 0; i < num_of_items_in_table; i++) {
  rc = mt9d112_i2c_write(mt9d112_client->addr,
   reg_conf_tbl->waddr, reg_conf_tbl->wdata,
   reg_conf_tbl->width);
  if (rc < 0)
   break;
  if (reg_conf_tbl->mdelay_time != 0)
   mdelay(reg_conf_tbl->mdelay_time);
  reg_conf_tbl++;
 }

 return rc;
}
