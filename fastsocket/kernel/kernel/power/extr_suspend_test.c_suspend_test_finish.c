
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_SUSPEND_SECONDS ;
 int WARN (int,char*,char const*,unsigned int) ;
 int abs (long) ;
 long jiffies ;
 unsigned int jiffies_to_msecs (int ) ;
 int pr_info (char*,char const*,unsigned int,unsigned int) ;
 long suspend_test_start_time ;

void suspend_test_finish(const char *label)
{
 long nj = jiffies - suspend_test_start_time;
 unsigned msec;

 msec = jiffies_to_msecs(abs(nj));
 pr_info("PM: %s took %d.%03d seconds\n", label,
   msec / 1000, msec % 1000);
 WARN(msec > (TEST_SUSPEND_SECONDS * 1000),
      "Component: %s, time: %u\n", label, msec);
}
