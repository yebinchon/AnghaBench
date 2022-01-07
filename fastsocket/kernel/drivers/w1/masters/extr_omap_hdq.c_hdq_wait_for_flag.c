
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct hdq_data {int dummy; } ;


 int EINVAL ;
 int ETIMEDOUT ;
 scalar_t__ OMAP_HDQ_FLAG_CLEAR ;
 scalar_t__ OMAP_HDQ_FLAG_SET ;
 unsigned long OMAP_HDQ_TIMEOUT ;
 scalar_t__ hdq_reg_in (struct hdq_data*,int ) ;
 unsigned long jiffies ;
 int schedule_timeout_uninterruptible (int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int hdq_wait_for_flag(struct hdq_data *hdq_data, u32 offset,
  u8 flag, u8 flag_set, u8 *status)
{
 int ret = 0;
 unsigned long timeout = jiffies + OMAP_HDQ_TIMEOUT;

 if (flag_set == OMAP_HDQ_FLAG_CLEAR) {

  while (((*status = hdq_reg_in(hdq_data, offset)) & flag)
   && time_before(jiffies, timeout)) {
   schedule_timeout_uninterruptible(1);
  }
  if (*status & flag)
   ret = -ETIMEDOUT;
 } else if (flag_set == OMAP_HDQ_FLAG_SET) {

  while (!((*status = hdq_reg_in(hdq_data, offset)) & flag)
   && time_before(jiffies, timeout)) {
   schedule_timeout_uninterruptible(1);
  }
  if (!(*status & flag))
   ret = -ETIMEDOUT;
 } else
  return -EINVAL;

 return ret;
}
