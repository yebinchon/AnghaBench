
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dsa_switch {int dummy; } ;


 int ETIMEDOUT ;
 int REG_GLOBAL2 ;
 int REG_READ (int ,int) ;
 int REG_WRITE (int ,int,int) ;

int mv88e6xxx_set_addr_indirect(struct dsa_switch *ds, u8 *addr)
{
 int i;
 int ret;

 for (i = 0; i < 6; i++) {
  int j;




  REG_WRITE(REG_GLOBAL2, 0x0d, 0x8000 | (i << 8) | addr[i]);




  for (j = 0; j < 16; j++) {
   ret = REG_READ(REG_GLOBAL2, 0x0d);
   if ((ret & 0x8000) == 0)
    break;
  }
  if (j == 16)
   return -ETIMEDOUT;
 }

 return 0;
}
