
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HARD_REG_SET ;


 int FIRST_PSEUDO_REGISTER ;
 scalar_t__ TEST_HARD_REG_BIT (int ,int) ;
 int dump_file ;
 int fprintf (int ,char*,int) ;

__attribute__((used)) static void
dump_hard_reg_set (HARD_REG_SET s)
{
  int reg;
  for (reg = 0; reg < FIRST_PSEUDO_REGISTER; reg++)
    if (TEST_HARD_REG_BIT (s, reg))
      fprintf (dump_file, " %d", reg);
}
