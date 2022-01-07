
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reg_class { ____Placeholder_reg_class } reg_class ;


 int ALL_REGS ;
 int GO_IF_HARD_REG_SUBSET (int ,int ,int ) ;
 int * reg_class_contents ;
 int win ;

int
reg_class_subset_p (enum reg_class c1, enum reg_class c2)
{
  if (c1 == c2) return 1;

  if (c2 == ALL_REGS)
  win:
    return 1;
  GO_IF_HARD_REG_SUBSET (reg_class_contents[(int) c1],
    reg_class_contents[(int) c2],
    win);
  return 0;
}
