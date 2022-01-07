
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atm_trafprm {int pcr; int min_pcr; int max_pcr; } ;


 int ATM_MAX_PCR ;

int atm_pcr_goal(const struct atm_trafprm *tp)
{
 if (tp->pcr && tp->pcr != ATM_MAX_PCR)
  return -tp->pcr;
 if (tp->min_pcr && !tp->pcr)
  return tp->min_pcr;
 if (tp->max_pcr != ATM_MAX_PCR)
  return -tp->max_pcr;
 return 0;
}
