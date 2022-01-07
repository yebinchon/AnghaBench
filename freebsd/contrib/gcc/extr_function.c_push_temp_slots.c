
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int temp_slot_level ;

void
push_temp_slots (void)
{
  temp_slot_level++;
}
