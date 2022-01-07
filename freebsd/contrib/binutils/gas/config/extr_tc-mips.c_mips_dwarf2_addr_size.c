
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HAVE_64BIT_SYMBOLS ;

int
mips_dwarf2_addr_size (void)
{
  if (HAVE_64BIT_SYMBOLS)
    return 8;
  else
    return 4;
}
