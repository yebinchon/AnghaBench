
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum reg_class { ____Placeholder_reg_class } reg_class ;
struct TYPE_2__ {int prefclass; } ;


 int GENERAL_REGS ;
 TYPE_1__* reg_pref ;

enum reg_class
reg_preferred_class (int regno)
{
  if (reg_pref == 0)
    return GENERAL_REGS;
  return (enum reg_class) reg_pref[regno].prefclass;
}
