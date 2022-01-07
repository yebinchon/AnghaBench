
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {TYPE_1__* clock; int lock; } ;
struct TYPE_3__ {int max_idle_ns; } ;


 unsigned long read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,unsigned long) ;
 TYPE_2__ timekeeper ;

u64 timekeeping_max_deferment(void)
{
 unsigned long seq;
 u64 ret;
 do {
  seq = read_seqbegin(&timekeeper.lock);

  ret = timekeeper.clock->max_idle_ns;

 } while (read_seqretry(&timekeeper.lock, seq));

 return ret;
}
