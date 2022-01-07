
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* rose_addr; } ;
typedef TYPE_1__ rose_address ;


 int sprintf (char*,char*,int,int,int,int,int) ;
 int strcpy (char*,char*) ;

char *rose2asc(char *buf, const rose_address *addr)
{
 if (addr->rose_addr[0] == 0x00 && addr->rose_addr[1] == 0x00 &&
     addr->rose_addr[2] == 0x00 && addr->rose_addr[3] == 0x00 &&
     addr->rose_addr[4] == 0x00) {
  strcpy(buf, "*");
 } else {
  sprintf(buf, "%02X%02X%02X%02X%02X", addr->rose_addr[0] & 0xFF,
      addr->rose_addr[1] & 0xFF,
      addr->rose_addr[2] & 0xFF,
      addr->rose_addr[3] & 0xFF,
      addr->rose_addr[4] & 0xFF);
 }

 return buf;
}
