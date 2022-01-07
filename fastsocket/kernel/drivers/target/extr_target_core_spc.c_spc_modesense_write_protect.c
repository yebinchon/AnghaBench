
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void spc_modesense_write_protect(unsigned char *buf, int type)
{




 switch (type) {
 case 129:
 case 128:
 default:
  buf[0] |= 0x80;
  break;
 }
}
