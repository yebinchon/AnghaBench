
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int SP_REGNUM ;
 int read_signed_register (int ) ;

__attribute__((used)) static CORE_ADDR
mips_read_sp (void)
{
  return read_signed_register (SP_REGNUM);
}
