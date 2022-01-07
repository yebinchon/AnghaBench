
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; scalar_t__ tail; scalar_t__ head; int n; int data; } ;
typedef TYPE_1__ msnd_fifo ;


 int memcpy (char*,int,int) ;

int msnd_fifo_read(msnd_fifo *f, char *buf, size_t len)
{
 int count = 0;

 while ((count < len) && (f->len > 0)) {

  int nread;

  if (f->tail <= f->head) {
   nread = len - count;
   if (nread > f->n - f->head)
    nread = f->n - f->head;
  }
  else {
   nread = f->tail - f->head;
   if (nread > len - count)
    nread = len - count;
  }

  memcpy(buf, f->data + f->head, nread);

  count += nread;
  buf += nread;
  f->len -= nread;
  f->head += nread;
  f->head %= f->n;
 }

 return count;
}
