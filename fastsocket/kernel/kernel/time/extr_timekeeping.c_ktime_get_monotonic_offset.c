
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int dummy; } ;
typedef int ktime_t ;
struct TYPE_2__ {struct timespec wall_to_monotonic; int lock; } ;


 unsigned long read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,unsigned long) ;
 TYPE_1__ timekeeper ;
 int timespec_to_ktime (struct timespec) ;

ktime_t ktime_get_monotonic_offset(void)
{
 unsigned long seq;
 struct timespec wtom;

 do {
  seq = read_seqbegin(&timekeeper.lock);
  wtom = timekeeper.wall_to_monotonic;
 } while (read_seqretry(&timekeeper.lock, seq));

 return timespec_to_ktime(wtom);
}
