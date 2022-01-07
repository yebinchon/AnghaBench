
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VEC_length (int ,int ) ;
 int temp_slot_p ;
 int used_temp_slots ;

__attribute__((used)) static int
max_slot_level (void)
{
  if (!used_temp_slots)
    return -1;

  return VEC_length (temp_slot_p, used_temp_slots) - 1;
}
