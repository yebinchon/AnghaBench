
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ size; } ;
struct intelfb_info {scalar_t__ ring_tail; scalar_t__ ring_head; TYPE_1__ ring; } ;


 scalar_t__ RING_MIN_FREE ;

__attribute__((used)) static u32 get_ring_space(struct intelfb_info *dinfo)
{
 u32 ring_space;

 if (dinfo->ring_tail >= dinfo->ring_head)
  ring_space = dinfo->ring.size -
   (dinfo->ring_tail - dinfo->ring_head);
 else
  ring_space = dinfo->ring_head - dinfo->ring_tail;

 if (ring_space > RING_MIN_FREE)
  ring_space -= RING_MIN_FREE;
 else
  ring_space = 0;

 return ring_space;
}
