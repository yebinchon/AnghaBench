
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u16 ;


 int sprintf (char*,char*,unsigned short,unsigned short) ;

char *dn_addr2asc(__u16 addr, char *buf)
{
 unsigned short node, area;

 node = addr & 0x03ff;
 area = addr >> 10;
 sprintf(buf, "%hd.%hd", area, node);

 return buf;
}
