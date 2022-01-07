
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_wbuf {int timer; scalar_t__ need_sync; scalar_t__ no_timer; } ;


 int hrtimer_cancel (int *) ;

__attribute__((used)) static void cancel_wbuf_timer_nolock(struct ubifs_wbuf *wbuf)
{
 if (wbuf->no_timer)
  return;
 wbuf->need_sync = 0;
 hrtimer_cancel(&wbuf->timer);
}
