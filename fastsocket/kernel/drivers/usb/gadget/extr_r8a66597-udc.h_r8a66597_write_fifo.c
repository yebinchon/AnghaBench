
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8a66597 {unsigned long reg; TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ on_chip; } ;


 int BIGEND ;
 int CFIFOSEL ;
 int outb (unsigned char,unsigned long) ;
 int outsl (unsigned long,unsigned char*,int) ;
 int outsw (unsigned long,unsigned char*,int) ;
 int r8a66597_read (struct r8a66597*,int ) ;

__attribute__((used)) static inline void r8a66597_write_fifo(struct r8a66597 *r8a66597,
           unsigned long offset,
           unsigned char *buf,
           int len)
{
 unsigned long fifoaddr = r8a66597->reg + offset;
 int adj = 0;
 int i;

 if (r8a66597->pdata->on_chip) {

  if (len >= 4 && !((unsigned long)buf & 0x03)) {
   outsl(fifoaddr, buf, len / 4);
   buf += len & ~0x03;
   len &= 0x03;
  }
 } else {

  if (len >= 2 && !((unsigned long)buf & 0x01)) {
   outsw(fifoaddr, buf, len / 2);
   buf += len & ~0x01;
   len &= 0x01;
  }
 }


 if (!(r8a66597_read(r8a66597, CFIFOSEL) & BIGEND)) {
  if (r8a66597->pdata->on_chip)
   adj = 0x03;
  else
   adj = 0x01;
 }

 for (i = 0; i < len; i++)
  outb(buf[i], fifoaddr + adj - (i & adj));
}
