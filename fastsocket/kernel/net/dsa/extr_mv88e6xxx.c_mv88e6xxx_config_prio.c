
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch {int dummy; } ;


 int REG_GLOBAL ;
 int REG_WRITE (int ,int,int) ;

int mv88e6xxx_config_prio(struct dsa_switch *ds)
{



 REG_WRITE(REG_GLOBAL, 0x10, 0x0000);
 REG_WRITE(REG_GLOBAL, 0x11, 0x0000);
 REG_WRITE(REG_GLOBAL, 0x12, 0x5555);
 REG_WRITE(REG_GLOBAL, 0x13, 0x5555);
 REG_WRITE(REG_GLOBAL, 0x14, 0xaaaa);
 REG_WRITE(REG_GLOBAL, 0x15, 0xaaaa);
 REG_WRITE(REG_GLOBAL, 0x16, 0xffff);
 REG_WRITE(REG_GLOBAL, 0x17, 0xffff);




 REG_WRITE(REG_GLOBAL, 0x18, 0xfa41);

 return 0;
}
