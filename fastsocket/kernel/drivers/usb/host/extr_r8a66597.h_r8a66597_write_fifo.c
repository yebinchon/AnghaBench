
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct r8a66597 {unsigned long reg; TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ on_chip; } ;


 int BIGEND ;
 int CFIFOSEL ;
 int outb (unsigned char,unsigned long) ;
 int outsl (unsigned long,scalar_t__*,unsigned long) ;
 int outsw (unsigned long,scalar_t__*,int) ;
 int r8a66597_read (struct r8a66597*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void r8a66597_write_fifo(struct r8a66597 *r8a66597,
           unsigned long offset, u16 *buf,
           int len)
{
 unsigned long fifoaddr = r8a66597->reg + offset;
 unsigned long count;
 unsigned char *pb;
 int i;

 if (r8a66597->pdata->on_chip) {
  count = len / 4;
  outsl(fifoaddr, buf, count);

  if (len & 0x00000003) {
   pb = (unsigned char *)buf + count * 4;
   for (i = 0; i < (len & 0x00000003); i++) {
    if (r8a66597_read(r8a66597, CFIFOSEL) & BIGEND)
     outb(pb[i], fifoaddr + i);
    else
     outb(pb[i], fifoaddr + 3 - i);
   }
  }
 } else {
  int odd = len & 0x0001;

  len = len / 2;
  outsw(fifoaddr, buf, len);
  if (unlikely(odd)) {
   buf = &buf[len];
   outb((unsigned char)*buf, fifoaddr);
  }
 }
}
