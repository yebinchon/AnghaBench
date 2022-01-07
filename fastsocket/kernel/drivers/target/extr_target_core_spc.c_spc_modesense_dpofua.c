
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void spc_modesense_dpofua(unsigned char *buf, int type)
{
 switch (type) {
 case 128:
  buf[0] |= 0x10;
  break;
 default:
  break;
 }
}
