
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct w1_slave {TYPE_1__* master; int reg_num; } ;
struct TYPE_4__ {int slave_count; } ;


 int W1_MATCH_ROM ;
 int W1_SKIP_ROM ;
 int le64_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ w1_reset_bus (TYPE_1__*) ;
 int w1_write_8 (TYPE_1__*,int ) ;
 int w1_write_block (TYPE_1__*,int *,int) ;

int w1_reset_select_slave(struct w1_slave *sl)
{
 if (w1_reset_bus(sl->master))
  return -1;

 if (sl->master->slave_count == 1)
  w1_write_8(sl->master, W1_SKIP_ROM);
 else {
  u8 match[9] = {W1_MATCH_ROM, };
  u64 rn = le64_to_cpu(*((u64*)&sl->reg_num));

  memcpy(&match[1], &rn, 8);
  w1_write_block(sl->master, match, 9);
 }
 return 0;
}
