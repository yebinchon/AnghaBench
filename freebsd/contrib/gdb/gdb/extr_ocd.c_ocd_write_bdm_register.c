
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int ocd_write_bdm_registers (int,unsigned char*,int) ;
 int store_unsigned_integer (unsigned char*,int,int ) ;

void
ocd_write_bdm_register (int bdm_regno, CORE_ADDR reg)
{
  unsigned char buf[4];

  store_unsigned_integer (buf, 4, reg);

  ocd_write_bdm_registers (bdm_regno, buf, 4);
}
