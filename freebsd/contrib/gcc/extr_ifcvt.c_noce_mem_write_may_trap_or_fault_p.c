
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ rtx ;
struct TYPE_2__ {scalar_t__ (* delegitimize_address ) (scalar_t__) ;} ;



 int CONST_INT ;
 int GET_CODE (scalar_t__) ;


 scalar_t__ MEM_READONLY_P (scalar_t__) ;
 int SYMBOL_REF_DECL (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int) ;
 int decl_readonly_section (int ,int ) ;
 scalar_t__ may_trap_or_fault_p (scalar_t__) ;
 scalar_t__ stub1 (scalar_t__) ;
 TYPE_1__ targetm ;

__attribute__((used)) static bool
noce_mem_write_may_trap_or_fault_p (rtx mem)
{
  rtx addr;

  if (MEM_READONLY_P (mem))
    return 1;

  if (may_trap_or_fault_p (mem))
    return 1;

  addr = XEXP (mem, 0);


  addr = targetm.delegitimize_address (addr);

  while (addr)
    switch (GET_CODE (addr))
      {
      case 138:
      case 131:
      case 130:
      case 134:
      case 133:
      case 132:
 addr = XEXP (addr, 0);
 break;
      case 136:
      case 129:
 addr = XEXP (addr, 1);
 break;
      case 135:
 if (GET_CODE (XEXP (addr, 1)) == CONST_INT)
   addr = XEXP (addr, 0);
 else
   return 0;
 break;
      case 137:
 return 1;
      case 128:
 if (SYMBOL_REF_DECL (addr)
     && decl_readonly_section (SYMBOL_REF_DECL (addr), 0))
   return 1;
 return 0;
      default:
 return 0;
      }

  return 0;
}
