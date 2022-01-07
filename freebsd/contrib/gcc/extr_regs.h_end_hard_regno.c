
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 unsigned int** hard_regno_nregs ;

__attribute__((used)) static inline unsigned int
end_hard_regno (enum machine_mode mode, unsigned int regno)
{
  return regno + hard_regno_nregs[regno][(int) mode];
}
