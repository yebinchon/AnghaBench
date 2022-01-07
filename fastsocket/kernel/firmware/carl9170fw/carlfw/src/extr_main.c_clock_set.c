
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef enum cpu_clock_t { ____Placeholder_cpu_clock_t } cpu_clock_t ;
struct TYPE_3__ {int frequency; } ;
struct TYPE_4__ {int ticks_per_usec; TYPE_1__ phy; } ;






 int AR9170_PWR_PLL_ADDAC_DIV ;
 int AR9170_PWR_REG_CLOCK_SEL ;
 int AR9170_PWR_REG_PLL_ADDAC ;
 int GET_VAL (int ,int ) ;
 TYPE_2__ fw ;
 int get (int ) ;
 int set (int ,int) ;

void clock_set(enum cpu_clock_t clock_, bool on)
{
 set(AR9170_PWR_REG_PLL_ADDAC, 0x5163);


 fw.ticks_per_usec = GET_VAL(AR9170_PWR_PLL_ADDAC_DIV,
  get(AR9170_PWR_REG_PLL_ADDAC));

 set(AR9170_PWR_REG_CLOCK_SEL, (uint32_t) ((on ? 0x70 : 0x600) | clock_));

 switch (clock_) {
 case 131:
  fw.ticks_per_usec >>= 1;
 case 130:
 case 129:
  fw.ticks_per_usec >>= 1;
 case 128:
  break;
 }
}
