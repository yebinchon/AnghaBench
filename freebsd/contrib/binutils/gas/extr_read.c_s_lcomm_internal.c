
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;
typedef scalar_t__ addressT ;


 int TC_IMPLICIT_LCOMM_ALIGNMENT (scalar_t__,scalar_t__) ;
 int bss_alloc (int *,scalar_t__,scalar_t__) ;
 scalar_t__ parse_align (int) ;

symbolS *
s_lcomm_internal (int needs_align, symbolS *symbolP, addressT size)
{
  addressT align = 0;

  if (needs_align)
    {
      align = parse_align (needs_align - 1);
      if (align == (addressT) -1)
 return ((void*)0);
    }
  else

    TC_IMPLICIT_LCOMM_ALIGNMENT (size, align);

  bss_alloc (symbolP, size, align);
  return symbolP;
}
