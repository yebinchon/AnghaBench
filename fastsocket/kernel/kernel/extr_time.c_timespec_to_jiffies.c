
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct timespec {unsigned long tv_sec; int tv_nsec; } ;


 unsigned long MAX_SEC_IN_JIFFIES ;
 unsigned long NSEC_CONVERSION ;
 unsigned long NSEC_JIFFIE_SC ;
 unsigned long SEC_CONVERSION ;
 unsigned long SEC_JIFFIE_SC ;
 int TICK_NSEC ;

unsigned long
timespec_to_jiffies(const struct timespec *value)
{
 unsigned long sec = value->tv_sec;
 long nsec = value->tv_nsec + TICK_NSEC - 1;

 if (sec >= MAX_SEC_IN_JIFFIES){
  sec = MAX_SEC_IN_JIFFIES;
  nsec = 0;
 }
 return (((u64)sec * SEC_CONVERSION) +
  (((u64)nsec * NSEC_CONVERSION) >>
   (NSEC_JIFFIE_SC - SEC_JIFFIE_SC))) >> SEC_JIFFIE_SC;

}
