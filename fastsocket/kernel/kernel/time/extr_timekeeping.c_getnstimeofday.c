
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int dummy; } ;
typedef int s64 ;
struct TYPE_2__ {struct timespec xtime; int lock; } ;


 int WARN_ON (int ) ;
 scalar_t__ arch_gettimeoffset () ;
 unsigned long read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,unsigned long) ;
 TYPE_1__ timekeeper ;
 int timekeeping_get_ns () ;
 int timekeeping_suspended ;
 int timespec_add_ns (struct timespec*,int ) ;

void getnstimeofday(struct timespec *ts)
{
 unsigned long seq;
 s64 nsecs;

 WARN_ON(timekeeping_suspended);

 do {
  seq = read_seqbegin(&timekeeper.lock);

  *ts = timekeeper.xtime;
  nsecs = timekeeping_get_ns();


  nsecs += arch_gettimeoffset();

 } while (read_seqretry(&timekeeper.lock, seq));

 timespec_add_ns(ts, nsecs);
}
