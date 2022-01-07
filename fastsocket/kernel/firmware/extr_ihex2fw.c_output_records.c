
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ihex_binrec {int len; unsigned char addr; struct ihex_binrec* next; } ;


 unsigned char htonl (unsigned char) ;
 int htons (int) ;
 struct ihex_binrec* records ;
 int write (int,unsigned char*,int) ;

__attribute__((used)) static int output_records(int outfd)
{
 unsigned char zeroes[6] = {0, 0, 0, 0, 0, 0};
 struct ihex_binrec *p = records;

 while (p) {
  uint16_t writelen = (p->len + 9) & ~3;

  p->addr = htonl(p->addr);
  p->len = htons(p->len);
  write(outfd, &p->addr, writelen);
  p = p->next;
 }


 write(outfd, zeroes, 6);
 return 0;
}
