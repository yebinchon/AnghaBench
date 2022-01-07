
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct output {scalar_t__ fd; int * buf; int * nextc; int flags; } ;


 int OUTPUT_ERR ;
 scalar_t__ xwrite (scalar_t__,int *,int) ;

void
flushout(struct output *dest)
{

 if (dest->buf == ((void*)0) || dest->nextc == dest->buf || dest->fd < 0)
  return;
 if (xwrite(dest->fd, dest->buf, dest->nextc - dest->buf) < 0)
  dest->flags |= OUTPUT_ERR;
 dest->nextc = dest->buf;
}
