
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; scalar_t__ n; scalar_t__ head; scalar_t__ tail; int data; } ;
typedef TYPE_1__ msnd_fifo ;


 int memcpy (int,char const*,int) ;

int msnd_fifo_write(msnd_fifo *f, const char *buf, size_t len)
{
 int count = 0;

 while ((count < len) && (f->len != f->n)) {

  int nwritten;

  if (f->head <= f->tail) {
   nwritten = len - count;
   if (nwritten > f->n - f->tail)
    nwritten = f->n - f->tail;
  }
  else {
   nwritten = f->head - f->tail;
   if (nwritten > len - count)
    nwritten = len - count;
  }

  memcpy(f->data + f->tail, buf, nwritten);

  count += nwritten;
  buf += nwritten;
  f->len += nwritten;
  f->tail += nwritten;
  f->tail %= f->n;
 }

 return count;
}
