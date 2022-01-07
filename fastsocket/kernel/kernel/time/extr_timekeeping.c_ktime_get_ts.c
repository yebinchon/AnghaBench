
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
typedef scalar_t__ s64 ;
struct TYPE_2__ {struct timespec wall_to_monotonic; struct timespec xtime; int lock; } ;


 int WARN_ON (int ) ;
 scalar_t__ arch_gettimeoffset () ;
 unsigned int read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,unsigned int) ;
 int set_normalized_timespec (struct timespec*,scalar_t__,scalar_t__) ;
 TYPE_1__ timekeeper ;
 scalar_t__ timekeeping_get_ns () ;
 int timekeeping_suspended ;

void ktime_get_ts(struct timespec *ts)
{
 struct timespec tomono;
 unsigned int seq;
 s64 nsecs;

 WARN_ON(timekeeping_suspended);

 do {
  seq = read_seqbegin(&timekeeper.lock);
  *ts = timekeeper.xtime;
  tomono = timekeeper.wall_to_monotonic;
  nsecs = timekeeping_get_ns();

  nsecs += arch_gettimeoffset();

 } while (read_seqretry(&timekeeper.lock, seq));

 set_normalized_timespec(ts, ts->tv_sec + tomono.tv_sec,
    ts->tv_nsec + tomono.tv_nsec + nsecs);
}
