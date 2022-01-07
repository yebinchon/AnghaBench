
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reg_class { ____Placeholder_reg_class } reg_class ;
typedef int HARD_REG_SET ;


 int ALL_REGS ;
 int AND_HARD_REG_SET (int ,int ) ;
 int COPY_HARD_REG_SET (int ,int ) ;
 int GO_IF_HARD_REG_SUBSET (int ,int ,int ) ;
 scalar_t__ NO_REGS ;
 int lose ;
 int * reg_class_contents ;

int
reg_classes_intersect_p (enum reg_class c1, enum reg_class c2)
{
  HARD_REG_SET c;

  if (c1 == c2) return 1;

  if (c1 == ALL_REGS || c2 == ALL_REGS)
    return 1;

  COPY_HARD_REG_SET (c, reg_class_contents[(int) c1]);
  AND_HARD_REG_SET (c, reg_class_contents[(int) c2]);

  GO_IF_HARD_REG_SUBSET (c, reg_class_contents[(int) NO_REGS], lose);
  return 1;

 lose:
  return 0;
}
