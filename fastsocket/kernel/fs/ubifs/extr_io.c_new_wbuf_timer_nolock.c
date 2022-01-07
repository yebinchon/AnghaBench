
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_wbuf {scalar_t__ delta; int softlimit; int timer; int jhead; scalar_t__ no_timer; } ;


 int HRTIMER_MODE_REL ;
 int USEC_PER_SEC ;
 int dbg_io (char*,int ,int ,int ) ;
 int dbg_jhead (int ) ;
 int div_u64 (scalar_t__,int ) ;
 int hrtimer_active (int *) ;
 int hrtimer_start_range_ns (int *,int ,scalar_t__,int ) ;
 scalar_t__ ktime_to_ns (int ) ;
 int ubifs_assert (int) ;

__attribute__((used)) static void new_wbuf_timer_nolock(struct ubifs_wbuf *wbuf)
{
 ubifs_assert(!hrtimer_active(&wbuf->timer));

 if (wbuf->no_timer)
  return;
 dbg_io("set timer for jhead %s, %llu-%llu millisecs",
        dbg_jhead(wbuf->jhead),
        div_u64(ktime_to_ns(wbuf->softlimit), USEC_PER_SEC),
        div_u64(ktime_to_ns(wbuf->softlimit) + wbuf->delta,
         USEC_PER_SEC));
 hrtimer_start_range_ns(&wbuf->timer, wbuf->softlimit, wbuf->delta,
          HRTIMER_MODE_REL);
}
