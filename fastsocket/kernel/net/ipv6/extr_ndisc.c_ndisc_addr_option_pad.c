
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int ndisc_addr_option_pad(unsigned short type)
{
 switch (type) {
 case 128: return 2;
 default: return 0;
 }
}
