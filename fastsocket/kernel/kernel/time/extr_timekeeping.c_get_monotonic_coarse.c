
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_2__ {struct timespec wall_to_monotonic; struct timespec xtime; int lock; } ;


 unsigned long read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,unsigned long) ;
 int set_normalized_timespec (struct timespec*,scalar_t__,scalar_t__) ;
 TYPE_1__ timekeeper ;

struct timespec get_monotonic_coarse(void)
{
 struct timespec now, mono;
 unsigned long seq;

 do {
  seq = read_seqbegin(&timekeeper.lock);

  now = timekeeper.xtime;
  mono = timekeeper.wall_to_monotonic;
 } while (read_seqretry(&timekeeper.lock, seq));

 set_normalized_timespec(&now, now.tv_sec + mono.tv_sec,
    now.tv_nsec + mono.tv_nsec);
 return now;
}
