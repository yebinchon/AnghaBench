
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int state_t ;


 scalar_t__ cpu_unit_reservation_p (int ,int ) ;
 int pos_1 ;
 int pos_2 ;
 int pos_3 ;
 int pos_4 ;
 int pos_5 ;
 int pos_6 ;

__attribute__((used)) static int
get_max_pos (state_t state)
{
  if (cpu_unit_reservation_p (state, pos_6))
    return 6;
  else if (cpu_unit_reservation_p (state, pos_5))
    return 5;
  else if (cpu_unit_reservation_p (state, pos_4))
    return 4;
  else if (cpu_unit_reservation_p (state, pos_3))
    return 3;
  else if (cpu_unit_reservation_p (state, pos_2))
    return 2;
  else if (cpu_unit_reservation_p (state, pos_1))
    return 1;
  else
    return 0;
}
