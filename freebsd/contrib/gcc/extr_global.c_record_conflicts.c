
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hard_reg_conflicts; } ;


 int IOR_HARD_REG_SET (int ,int ) ;
 TYPE_1__* allocno ;
 int hard_regs_live ;

__attribute__((used)) static void
record_conflicts (int *allocno_vec, int len)
{
  while (--len >= 0)
    IOR_HARD_REG_SET (allocno[allocno_vec[len]].hard_reg_conflicts,
                      hard_regs_live);
}
