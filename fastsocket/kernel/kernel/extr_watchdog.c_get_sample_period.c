
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NSEC_PER_SEC ;
 int softlockup_thresh ;

__attribute__((used)) static unsigned long get_sample_period(void)
{






 return softlockup_thresh / 5 * NSEC_PER_SEC;
}
