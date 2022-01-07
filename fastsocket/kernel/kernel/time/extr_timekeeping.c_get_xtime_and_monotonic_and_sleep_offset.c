
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct TYPE_2__ {struct timespec total_sleep_time; struct timespec wall_to_monotonic; struct timespec xtime; int lock; } ;


 unsigned long read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,unsigned long) ;
 TYPE_1__ timekeeper ;

void get_xtime_and_monotonic_and_sleep_offset(struct timespec *xtim,
    struct timespec *wtom, struct timespec *sleep)
{
 unsigned long seq;

 do {
  seq = read_seqbegin(&timekeeper.lock);
  *xtim = timekeeper.xtime;
  *wtom = timekeeper.wall_to_monotonic;
  *sleep = timekeeper.total_sleep_time;
 } while (read_seqretry(&timekeeper.lock, seq));
}
