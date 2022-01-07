
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ s64 ;
typedef int ktime_t ;
struct TYPE_4__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_5__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_6__ {TYPE_1__ wall_to_monotonic; TYPE_2__ xtime; int lock; } ;


 int WARN_ON (int ) ;
 scalar_t__ arch_gettimeoffset () ;
 int ktime_add_ns (int ,scalar_t__) ;
 int ktime_set (scalar_t__,int ) ;
 unsigned int read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,unsigned int) ;
 TYPE_3__ timekeeper ;
 scalar_t__ timekeeping_get_ns () ;
 int timekeeping_suspended ;

ktime_t ktime_get(void)
{
 unsigned int seq;
 s64 secs, nsecs;

 WARN_ON(timekeeping_suspended);

 do {
  seq = read_seqbegin(&timekeeper.lock);
  secs = timekeeper.xtime.tv_sec +
    timekeeper.wall_to_monotonic.tv_sec;
  nsecs = timekeeper.xtime.tv_nsec +
    timekeeper.wall_to_monotonic.tv_nsec;
  nsecs += timekeeping_get_ns();

  nsecs += arch_gettimeoffset();

 } while (read_seqretry(&timekeeper.lock, seq));




 return ktime_add_ns(ktime_set(secs, 0), nsecs);
}
