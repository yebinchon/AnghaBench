
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int extract_unsigned_integer (unsigned char*,int) ;
 unsigned char* ocd_read_bdm_registers (int,int,int*) ;

CORE_ADDR
ocd_read_bdm_register (int bdm_regno)
{
  int reglen;
  unsigned char *p;
  CORE_ADDR regval;

  p = ocd_read_bdm_registers (bdm_regno, bdm_regno, &reglen);
  regval = extract_unsigned_integer (p, reglen);

  return regval;
}
