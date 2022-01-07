
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct temp_slot {int keep; struct temp_slot* next; } ;


 int combine_temp_slots () ;
 int make_slot_available (struct temp_slot*) ;
 int temp_slot_level ;
 struct temp_slot** temp_slots_at_level (int ) ;

void
free_temp_slots (void)
{
  struct temp_slot *p, *next;

  for (p = *temp_slots_at_level (temp_slot_level); p; p = next)
    {
      next = p->next;

      if (!p->keep)
 make_slot_available (p);
    }

  combine_temp_slots ();
}
