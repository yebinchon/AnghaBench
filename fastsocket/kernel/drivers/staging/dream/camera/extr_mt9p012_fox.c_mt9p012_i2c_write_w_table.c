
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt9p012_i2c_reg_conf {int wdata; int waddr; } ;
typedef scalar_t__ int32_t ;
struct TYPE_2__ {int addr; } ;


 scalar_t__ EIO ;
 TYPE_1__* mt9p012_client ;
 scalar_t__ mt9p012_i2c_write_w (int ,int ,int ) ;

__attribute__((used)) static int32_t mt9p012_i2c_write_w_table(
 struct mt9p012_i2c_reg_conf *reg_conf_tbl, int num)
{
 int i;
 int32_t rc = -EIO;

 for (i = 0; i < num; i++) {
  rc = mt9p012_i2c_write_w(mt9p012_client->addr,
   reg_conf_tbl->waddr, reg_conf_tbl->wdata);
  if (rc < 0)
   break;
  reg_conf_tbl++;
 }

 return rc;
}
