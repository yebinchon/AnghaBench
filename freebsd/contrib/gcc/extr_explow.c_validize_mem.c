
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CONSTANT_ADDRESS_P (int ) ;
 int GET_MODE (int ) ;
 int MEM_P (int ) ;
 int XEXP (int ,int ) ;
 scalar_t__ flag_force_addr ;
 scalar_t__ memory_address_p (int ,int ) ;
 int replace_equiv_address (int ,int ) ;
 int use_anchored_address (int ) ;

rtx
validize_mem (rtx ref)
{
  if (!MEM_P (ref))
    return ref;
  ref = use_anchored_address (ref);
  if (! (flag_force_addr && CONSTANT_ADDRESS_P (XEXP (ref, 0)))
      && memory_address_p (GET_MODE (ref), XEXP (ref, 0)))
    return ref;


  return replace_equiv_address (ref, XEXP (ref, 0));
}
