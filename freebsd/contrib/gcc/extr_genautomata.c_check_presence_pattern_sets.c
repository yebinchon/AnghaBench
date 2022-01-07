
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int set_el_t ;
typedef int* reserv_sets_t ;
typedef TYPE_1__* pattern_reserv_t ;
struct TYPE_6__ {int units_num; } ;
struct TYPE_5__ {int* reserv; struct TYPE_5__* next_pattern_reserv; } ;


 int CHAR_BIT ;
 int FALSE ;
 int TRUE ;
 TYPE_4__* description ;
 int els_in_cycle_reserv ;
 TYPE_1__** unit_final_presence_set_table ;
 TYPE_1__** unit_presence_set_table ;

__attribute__((used)) static int
check_presence_pattern_sets (reserv_sets_t checked_set,
        reserv_sets_t origional_set,
        int final_p)
{
  int char_num;
  int chars_num;
  int i;
  int start_unit_num;
  int unit_num;
  int presence_p;
  pattern_reserv_t pat_reserv;

  chars_num = els_in_cycle_reserv * sizeof (set_el_t);
  for (char_num = 0; char_num < chars_num; char_num++)
    if (((unsigned char *) origional_set) [char_num])
      for (i = CHAR_BIT - 1; i >= 0; i--)
 if ((((unsigned char *) origional_set) [char_num] >> i) & 1)
   {
     start_unit_num = char_num * CHAR_BIT + i;
     if (start_unit_num >= description->units_num)
       break;
     if ((final_p
   && unit_final_presence_set_table [start_unit_num] == ((void*)0))
  || (!final_p
      && unit_presence_set_table [start_unit_num] == ((void*)0)))
       continue;
     presence_p = FALSE;
     for (pat_reserv = (final_p
          ? unit_final_presence_set_table [start_unit_num]
          : unit_presence_set_table [start_unit_num]);
   pat_reserv != ((void*)0);
   pat_reserv = pat_reserv->next_pattern_reserv)
       {
  for (unit_num = 0; unit_num < els_in_cycle_reserv; unit_num++)
    if ((checked_set [unit_num] & pat_reserv->reserv [unit_num])
        != pat_reserv->reserv [unit_num])
      break;
  presence_p = presence_p || unit_num >= els_in_cycle_reserv;
       }
     if (!presence_p)
       return FALSE;
   }
  return TRUE;
}
