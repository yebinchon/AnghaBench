
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 scalar_t__ SP_REGNUM ;
 int gdb_assert (int) ;
 int write_register (scalar_t__,int ) ;

void
deprecated_write_sp (CORE_ADDR val)
{
  gdb_assert (SP_REGNUM >= 0);
  write_register (SP_REGNUM, val);
}
