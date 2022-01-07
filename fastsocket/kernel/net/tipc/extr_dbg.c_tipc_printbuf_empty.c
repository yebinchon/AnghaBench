
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct print_buf {scalar_t__ buf; scalar_t__ crs; } ;



int tipc_printbuf_empty(struct print_buf *pb)
{
 return (!pb->buf || (pb->crs == pb->buf));
}
