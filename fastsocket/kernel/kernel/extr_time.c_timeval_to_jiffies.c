
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct timeval {unsigned long tv_sec; long tv_usec; } ;


 unsigned long MAX_SEC_IN_JIFFIES ;
 unsigned long SEC_CONVERSION ;
 unsigned long SEC_JIFFIE_SC ;
 unsigned long USEC_CONVERSION ;
 unsigned long USEC_JIFFIE_SC ;
 unsigned long USEC_ROUND ;

unsigned long
timeval_to_jiffies(const struct timeval *value)
{
 unsigned long sec = value->tv_sec;
 long usec = value->tv_usec;

 if (sec >= MAX_SEC_IN_JIFFIES){
  sec = MAX_SEC_IN_JIFFIES;
  usec = 0;
 }
 return (((u64)sec * SEC_CONVERSION) +
  (((u64)usec * USEC_CONVERSION + USEC_ROUND) >>
   (USEC_JIFFIE_SC - SEC_JIFFIE_SC))) >> SEC_JIFFIE_SC;
}
