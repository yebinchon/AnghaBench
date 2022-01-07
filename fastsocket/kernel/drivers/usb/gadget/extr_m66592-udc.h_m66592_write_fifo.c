
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct m66592 {TYPE_1__* pdata; scalar_t__ reg; } ;
struct TYPE_2__ {scalar_t__ on_chip; } ;


 int M66592_CFBCFG ;
 scalar_t__ m66592_read (struct m66592*,int ) ;
 int outb (unsigned char,unsigned long) ;
 int outsl (unsigned long,void*,unsigned long) ;
 int outsw (unsigned long,void*,unsigned long) ;

__attribute__((used)) static inline void m66592_write_fifo(struct m66592 *m66592,
  unsigned long offset,
  void *buf, unsigned long len)
{
 unsigned long fifoaddr = (unsigned long)m66592->reg + offset;

 if (m66592->pdata->on_chip) {
  unsigned long count;
  unsigned char *pb;
  int i;

  count = len / 4;
  outsl(fifoaddr, buf, count);

  if (len & 0x00000003) {
   pb = buf + count * 4;
   for (i = 0; i < (len & 0x00000003); i++) {
    if (m66592_read(m66592, M66592_CFBCFG))
     outb(pb[i], fifoaddr + (3 - i));
    else
     outb(pb[i], fifoaddr + i);
   }
  }
 } else {
  unsigned long odd = len & 0x0001;

  len = len / 2;
  outsw(fifoaddr, buf, len);
  if (odd) {
   unsigned char *p = buf + len*2;
   outb(*p, fifoaddr);
  }
 }
}
