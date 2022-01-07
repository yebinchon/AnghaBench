
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ avail_temp_slots ;
 scalar_t__ temp_slot_level ;
 scalar_t__ used_temp_slots ;

void
init_temp_slots (void)
{

  avail_temp_slots = 0;
  used_temp_slots = 0;
  temp_slot_level = 0;
}
