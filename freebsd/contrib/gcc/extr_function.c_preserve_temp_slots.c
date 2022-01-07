
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct temp_slot {scalar_t__ level; int keep; struct temp_slot* next; scalar_t__ addr_taken; } ;
typedef scalar_t__ rtx ;


 scalar_t__ CONSTANT_P (scalar_t__) ;
 int MEM_P (scalar_t__) ;
 scalar_t__ REG_P (scalar_t__) ;
 scalar_t__ REG_POINTER (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int ) ;
 struct temp_slot* find_temp_slot_from_address (scalar_t__) ;
 int move_slot_to_level (struct temp_slot*,scalar_t__) ;
 scalar_t__ temp_slot_level ;
 struct temp_slot** temp_slots_at_level (scalar_t__) ;

void
preserve_temp_slots (rtx x)
{
  struct temp_slot *p = 0, *next;



  if (x == 0)
    {
      for (p = *temp_slots_at_level (temp_slot_level); p; p = next)
 {
   next = p->next;

   if (p->addr_taken)
     move_slot_to_level (p, temp_slot_level - 1);
 }

      return;
    }





  if (REG_P (x) && REG_POINTER (x))
    p = find_temp_slot_from_address (x);




  if (p == 0 && (!MEM_P (x) || CONSTANT_P (XEXP (x, 0))))
    {
      for (p = *temp_slots_at_level (temp_slot_level); p; p = next)
 {
   next = p->next;

   if (p->addr_taken)
     move_slot_to_level (p, temp_slot_level - 1);
 }

      return;
    }


  if (p == 0)
    p = find_temp_slot_from_address (XEXP (x, 0));

  if (p != 0)
    {


      struct temp_slot *q;

      if (p->level == temp_slot_level)
 {
   for (q = *temp_slots_at_level (temp_slot_level); q; q = next)
     {
       next = q->next;

       if (p != q && q->addr_taken)
  move_slot_to_level (q, temp_slot_level - 1);
     }

   move_slot_to_level (p, temp_slot_level - 1);
   p->addr_taken = 0;
 }
      return;
    }


  for (p = *temp_slots_at_level (temp_slot_level); p; p = next)
    {
      next = p->next;

      if (!p->keep)
 move_slot_to_level (p, temp_slot_level - 1);
    }
}
