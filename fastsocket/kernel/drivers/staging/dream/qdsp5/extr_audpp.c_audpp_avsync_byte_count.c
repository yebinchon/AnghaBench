
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int uint16_t ;
struct TYPE_2__ {unsigned int* avsync; } ;


 int AUDPP_AVSYNC_INFO_SIZE ;
 scalar_t__ BAD_ID (int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 TYPE_1__ the_audpp_state ;

unsigned audpp_avsync_byte_count(int id)
{
 uint16_t *avsync = the_audpp_state.avsync;
 unsigned val;
 unsigned long flags;
 unsigned mask;

 if (BAD_ID(id))
  return 0;

 mask = 1 << id;
 id = id * AUDPP_AVSYNC_INFO_SIZE + 5;
 local_irq_save(flags);
 if (avsync[0] & mask)
  val = (avsync[id] << 16) | avsync[id + 1];
 else
  val = 0;
 local_irq_restore(flags);

 return val;
}
