
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct TYPE_2__ {struct timespec xtime; int lock; } ;


 unsigned long read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,unsigned long) ;
 TYPE_1__ timekeeper ;

struct timespec current_kernel_time(void)
{
 struct timespec now;
 unsigned long seq;

 do {
  seq = read_seqbegin(&timekeeper.lock);

  now = timekeeper.xtime;
 } while (read_seqretry(&timekeeper.lock, seq));

 return now;
}
