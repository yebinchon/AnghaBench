
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;
struct uwb_drp_backoff_win {int window; int can_reserve_extra_mases; int n; int timer; scalar_t__ total_expired; } ;
struct uwb_rc {TYPE_1__ uwb_dev; struct uwb_drp_backoff_win bow; } ;


 int UWB_DRP_BACKOFF_WIN_MAX ;
 unsigned int UWB_SUPERFRAME_LENGTH_US ;
 int dev_dbg (struct device*,char*,int,...) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int random32 () ;
 scalar_t__ usecs_to_jiffies (unsigned int) ;

void uwb_rsv_backoff_win_increment(struct uwb_rc *rc)
{
 struct uwb_drp_backoff_win *bow = &rc->bow;
 struct device *dev = &rc->uwb_dev.dev;
 unsigned timeout_us;

 dev_dbg(dev, "backoff_win_increment: window=%d\n", bow->window);

 bow->can_reserve_extra_mases = 0;

 if((bow->window << 1) == UWB_DRP_BACKOFF_WIN_MAX)
  return;

 bow->window <<= 1;
 bow->n = random32() & (bow->window - 1);
 dev_dbg(dev, "new_window=%d, n=%d\n: ", bow->window, bow->n);


 timeout_us = bow->n * UWB_SUPERFRAME_LENGTH_US;
 bow->total_expired = 0;
 mod_timer(&bow->timer, jiffies + usecs_to_jiffies(timeout_us));
}
