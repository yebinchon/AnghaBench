
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int function; } ;
struct ubifs_wbuf {int lnum; int offs; int avail; unsigned long long delta; int softlimit; TYPE_1__ timer; scalar_t__ next_ino; struct ubifs_info* c; int lock; int io_mutex; int * sync_callback; int dtype; scalar_t__ used; int * buf; void* inodes; } ;
struct ubifs_info {size_t min_io_size; } ;
typedef int ino_t ;


 int CLOCK_MONOTONIC ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HRTIMER_MODE_REL ;
 int UBIFS_CH_SZ ;
 int UBI_UNKNOWN ;
 unsigned long long ULONG_MAX ;
 unsigned long long WBUF_TIMEOUT_HARDLIMIT ;
 unsigned long long WBUF_TIMEOUT_SOFTLIMIT ;
 int hrtimer_init (TYPE_1__*,int ,int ) ;
 int kfree (int *) ;
 void* kmalloc (size_t,int ) ;
 int ktime_set (unsigned long long,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int ubifs_assert (int) ;
 int wbuf_timer_callback_nolock ;

int ubifs_wbuf_init(struct ubifs_info *c, struct ubifs_wbuf *wbuf)
{
 size_t size;

 wbuf->buf = kmalloc(c->min_io_size, GFP_KERNEL);
 if (!wbuf->buf)
  return -ENOMEM;

 size = (c->min_io_size / UBIFS_CH_SZ + 1) * sizeof(ino_t);
 wbuf->inodes = kmalloc(size, GFP_KERNEL);
 if (!wbuf->inodes) {
  kfree(wbuf->buf);
  wbuf->buf = ((void*)0);
  return -ENOMEM;
 }

 wbuf->used = 0;
 wbuf->lnum = wbuf->offs = -1;
 wbuf->avail = c->min_io_size;
 wbuf->dtype = UBI_UNKNOWN;
 wbuf->sync_callback = ((void*)0);
 mutex_init(&wbuf->io_mutex);
 spin_lock_init(&wbuf->lock);
 wbuf->c = c;
 wbuf->next_ino = 0;

 hrtimer_init(&wbuf->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 wbuf->timer.function = wbuf_timer_callback_nolock;
 wbuf->softlimit = ktime_set(WBUF_TIMEOUT_SOFTLIMIT, 0);
 wbuf->delta = WBUF_TIMEOUT_HARDLIMIT - WBUF_TIMEOUT_SOFTLIMIT;
 wbuf->delta *= 1000000000ULL;
 ubifs_assert(wbuf->delta <= ULONG_MAX);
 return 0;
}
