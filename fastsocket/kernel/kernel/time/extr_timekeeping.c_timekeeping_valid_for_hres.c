
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* clock; int lock; } ;
struct TYPE_3__ {int flags; } ;


 int CLOCK_SOURCE_VALID_FOR_HRES ;
 unsigned long read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,unsigned long) ;
 TYPE_2__ timekeeper ;

int timekeeping_valid_for_hres(void)
{
 unsigned long seq;
 int ret;

 do {
  seq = read_seqbegin(&timekeeper.lock);

  ret = timekeeper.clock->flags & CLOCK_SOURCE_VALID_FOR_HRES;

 } while (read_seqretry(&timekeeper.lock, seq));

 return ret;
}
