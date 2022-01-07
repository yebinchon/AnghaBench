
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct m66592 {TYPE_1__* pdata; scalar_t__ reg; } ;
struct TYPE_2__ {scalar_t__ on_chip; } ;


 int insl (unsigned long,void*,unsigned long) ;
 int insw (unsigned long,void*,unsigned long) ;

__attribute__((used)) static inline void m66592_read_fifo(struct m66592 *m66592,
  unsigned long offset,
  void *buf, unsigned long len)
{
 unsigned long fifoaddr = (unsigned long)m66592->reg + offset;

 if (m66592->pdata->on_chip) {
  len = (len + 3) / 4;
  insl(fifoaddr, buf, len);
 } else {
  len = (len + 1) / 2;
  insw(fifoaddr, buf, len);
 }
}
