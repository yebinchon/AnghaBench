
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8a66597 {unsigned long reg; TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ on_chip; } ;


 unsigned int inl (unsigned long) ;
 int insl (unsigned long,unsigned char*,int) ;
 int insw (unsigned long,unsigned char*,int) ;
 unsigned int inw (unsigned long) ;

__attribute__((used)) static inline void r8a66597_read_fifo(struct r8a66597 *r8a66597,
          unsigned long offset,
          unsigned char *buf,
          int len)
{
 unsigned long fifoaddr = r8a66597->reg + offset;
 unsigned int data;
 int i;

 if (r8a66597->pdata->on_chip) {



  if (len >= 4 && !((unsigned long)buf & 0x03)) {
   insl(fifoaddr, buf, len / 4);
   buf += len & ~0x03;
   len &= 0x03;
  }


  for (i = 0; i < len; i++) {
   if (!(i & 0x03))
    data = inl(fifoaddr);

   buf[i] = (data >> ((i & 0x03) * 8)) & 0xff;
  }
 } else {



  if (len >= 2 && !((unsigned long)buf & 0x01)) {
   insw(fifoaddr, buf, len / 2);
   buf += len & ~0x01;
   len &= 0x01;
  }


  for (i = 0; i < len; i++) {
   if (!(i & 0x01))
    data = inw(fifoaddr);

   buf[i] = (data >> ((i & 0x01) * 8)) & 0xff;
  }
 }
}
