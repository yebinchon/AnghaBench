
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 scalar_t__ dspload_is_loaded (struct hda_codec*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static bool dspload_wait_loaded(struct hda_codec *codec)
{
 unsigned long timeout = jiffies + msecs_to_jiffies(2000);

 do {
  if (dspload_is_loaded(codec)) {
   pr_info("ca0132 DOWNLOAD OK :-) DSP IS RUNNING.\n");
   return 1;
  }
  msleep(20);
 } while (time_before(jiffies, timeout));

 pr_err("ca0132 DOWNLOAD FAILED!!! DSP IS NOT RUNNING.\n");
 return 0;
}
