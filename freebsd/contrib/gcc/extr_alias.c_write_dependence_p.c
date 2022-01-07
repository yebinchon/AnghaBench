
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ ALIAS_SET_MEMORY_BARRIER ;
 scalar_t__ BLKmode ;
 scalar_t__ CONSTANT_POOL_ADDRESS_P (scalar_t__) ;
 scalar_t__ DIFFERENT_ALIAS_SETS_P (scalar_t__,scalar_t__) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ GET_MODE (scalar_t__) ;
 scalar_t__ LABEL_REF ;
 scalar_t__ MEM_ALIAS_SET (scalar_t__) ;
 scalar_t__ MEM_READONLY_P (scalar_t__) ;
 scalar_t__ MEM_VOLATILE_P (scalar_t__) ;
 scalar_t__ SCRATCH ;
 int SIZE_FOR_MODE (scalar_t__) ;
 scalar_t__ SYMBOL_REF ;
 scalar_t__ XEXP (scalar_t__,int ) ;
 int aliases_everything_p (scalar_t__) ;
 int base_alias_check (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ canon_rtx (scalar_t__) ;
 scalar_t__ find_base_term (scalar_t__) ;
 scalar_t__ fixed_scalar_and_varying_struct_p (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;
 scalar_t__ get_addr (scalar_t__) ;
 int memrefs_conflict_p (int ,scalar_t__,int ,scalar_t__,int ) ;
 scalar_t__ nonoverlapping_memrefs_p (scalar_t__,scalar_t__) ;
 int rtx_addr_varies_p ;

__attribute__((used)) static int
write_dependence_p (rtx mem, rtx x, int writep)
{
  rtx x_addr, mem_addr;
  rtx fixed_scalar;
  rtx base;

  if (MEM_VOLATILE_P (x) && MEM_VOLATILE_P (mem))
    return 1;



  if (GET_MODE (x) == BLKmode && GET_CODE (XEXP (x, 0)) == SCRATCH)
    return 1;
  if (GET_MODE (mem) == BLKmode && GET_CODE (XEXP (mem, 0)) == SCRATCH)
    return 1;
  if (MEM_ALIAS_SET (x) == ALIAS_SET_MEMORY_BARRIER
      || MEM_ALIAS_SET (mem) == ALIAS_SET_MEMORY_BARRIER)
    return 1;

  if (DIFFERENT_ALIAS_SETS_P (x, mem))
    return 0;


  if (!writep && MEM_READONLY_P (mem))
    return 0;

  if (nonoverlapping_memrefs_p (x, mem))
    return 0;

  x_addr = get_addr (XEXP (x, 0));
  mem_addr = get_addr (XEXP (mem, 0));

  if (! writep)
    {
      base = find_base_term (mem_addr);
      if (base && (GET_CODE (base) == LABEL_REF
     || (GET_CODE (base) == SYMBOL_REF
         && CONSTANT_POOL_ADDRESS_P (base))))
 return 0;
    }

  if (! base_alias_check (x_addr, mem_addr, GET_MODE (x),
     GET_MODE (mem)))
    return 0;

  x_addr = canon_rtx (x_addr);
  mem_addr = canon_rtx (mem_addr);

  if (!memrefs_conflict_p (SIZE_FOR_MODE (mem), mem_addr,
      SIZE_FOR_MODE (x), x_addr, 0))
    return 0;

  fixed_scalar
    = fixed_scalar_and_varying_struct_p (mem, x, mem_addr, x_addr,
      rtx_addr_varies_p);

  return (!(fixed_scalar == mem && !aliases_everything_p (x))
   && !(fixed_scalar == x && !aliases_everything_p (mem)));
}
