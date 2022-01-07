
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct temp_slot {int addr_taken; } ;
typedef scalar_t__ rtx ;


 scalar_t__ CONSTANT_P (int ) ;
 int MEM_P (scalar_t__) ;
 int XEXP (scalar_t__,int ) ;
 struct temp_slot* find_temp_slot_from_address (int ) ;

void
mark_temp_addr_taken (rtx x)
{
  struct temp_slot *p;

  if (x == 0)
    return;



  if (!MEM_P (x) || CONSTANT_P (XEXP (x, 0)))
    return;

  p = find_temp_slot_from_address (XEXP (x, 0));
  if (p != 0)
    p->addr_taken = 1;
}
