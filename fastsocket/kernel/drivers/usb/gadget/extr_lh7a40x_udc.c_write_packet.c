
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int actual; int length; int * buf; } ;
struct lh7a40x_request {TYPE_1__ req; } ;
struct lh7a40x_ep {scalar_t__ fifo; } ;


 int DEBUG (char*,int,int,int volatile*) ;
 int min (int,int) ;
 int prefetch (int *) ;

__attribute__((used)) static __inline__ int write_packet(struct lh7a40x_ep *ep,
       struct lh7a40x_request *req, int max)
{
 u8 *buf;
 int length, count;
 volatile u32 *fifo = (volatile u32 *)ep->fifo;

 buf = req->req.buf + req->req.actual;
 prefetch(buf);

 length = req->req.length - req->req.actual;
 length = min(length, max);
 req->req.actual += length;

 DEBUG("Write %d (max %d), fifo %p\n", length, max, fifo);

 count = length;
 while (count--) {
  *fifo = *buf++;
 }

 return length;
}
