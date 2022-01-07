
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int set_el_t ;
typedef int reserv_sets_t ;


 int CHAR_BIT ;
 int SET_BIT (int ,int) ;
 int els_in_cycle_reserv ;
 int gcc_assert (int) ;
 int max_cycles_num ;

__attribute__((used)) static void
set_unit_reserv (reserv_sets_t reservs, int cycle_num, int unit_num)
{
  gcc_assert (cycle_num < max_cycles_num);
  SET_BIT (reservs, cycle_num * els_in_cycle_reserv
           * sizeof (set_el_t) * CHAR_BIT + unit_num);
}
