
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct print_buf {int size; int * buf; int * crs; } ;



void tipc_printbuf_reset(struct print_buf *pb)
{
 if (pb->buf) {
  pb->crs = pb->buf;
  pb->buf[0] = 0;
  pb->buf[pb->size - 1] = ~0;
 }
}
