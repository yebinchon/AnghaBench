
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt9t013_i2c_reg_conf {int wdata; int waddr; } ;
typedef scalar_t__ int32_t ;
struct TYPE_2__ {int addr; } ;


 scalar_t__ EIO ;
 TYPE_1__* mt9t013_client ;
 scalar_t__ mt9t013_i2c_write_w (int ,int ,int ) ;

__attribute__((used)) static int32_t mt9t013_i2c_write_w_table(
 struct mt9t013_i2c_reg_conf *reg_conf_tbl, int num_of_items_in_table)
{
 int i;
 int32_t rc = -EIO;

 for (i = 0; i < num_of_items_in_table; i++) {
  rc = mt9t013_i2c_write_w(mt9t013_client->addr,
   reg_conf_tbl->waddr, reg_conf_tbl->wdata);
  if (rc < 0)
   break;
  reg_conf_tbl++;
 }

 return rc;
}
