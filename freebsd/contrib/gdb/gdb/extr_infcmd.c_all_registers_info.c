
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int registers_info (char*,int) ;

void
all_registers_info (char *addr_exp, int from_tty)
{
  registers_info (addr_exp, 1);
}
