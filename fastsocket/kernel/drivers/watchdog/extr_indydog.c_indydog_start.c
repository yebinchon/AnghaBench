
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int cpuctrl0; } ;


 int SGIMC_CCTRL0_WDOG ;
 int indydog_lock ;
 TYPE_1__* sgimc ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void indydog_start(void)
{
 u32 mc_ctrl0;

 spin_lock(&indydog_lock);
 mc_ctrl0 = sgimc->cpuctrl0;
 mc_ctrl0 = sgimc->cpuctrl0 | SGIMC_CCTRL0_WDOG;
 sgimc->cpuctrl0 = mc_ctrl0;
 spin_unlock(&indydog_lock);
}
