
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HARD_REG_SET ;


 scalar_t__ TEST_HARD_REG_BIT (int const,unsigned int) ;
 unsigned int end_hard_regno (int,unsigned int) ;

__attribute__((used)) static inline bool
overlaps_hard_reg_set_p (const HARD_REG_SET regs, enum machine_mode mode,
    unsigned int regno)
{
  unsigned int end_regno;

  if (TEST_HARD_REG_BIT (regs, regno))
    return 1;

  end_regno = end_hard_regno (mode, regno);
  while (++regno < end_regno)
    if (TEST_HARD_REG_BIT (regs, regno))
      return 1;

  return 0;
}
