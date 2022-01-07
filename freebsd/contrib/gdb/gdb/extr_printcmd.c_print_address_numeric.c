
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
typedef int ULONGEST ;
typedef int CORE_ADDR ;


 int HOST_CHAR_BIT ;
 int TARGET_ADDR_BIT ;
 int print_longest (struct ui_file*,char,int,int ) ;

void
print_address_numeric (CORE_ADDR addr, int use_local, struct ui_file *stream)
{
  int addr_bit = TARGET_ADDR_BIT;

  if (addr_bit < (sizeof (CORE_ADDR) * HOST_CHAR_BIT))
    addr &= ((CORE_ADDR) 1 << addr_bit) - 1;
  print_longest (stream, 'x', use_local, (ULONGEST) addr);
}
