
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct print_buf {char* buf; char* crs; int size; scalar_t__ echo; } ;


 int TIPC_PB_MIN_SIZE ;

void tipc_printbuf_init(struct print_buf *pb, char *raw, u32 size)
{
 pb->buf = raw;
 pb->crs = raw;
 pb->size = size;
 pb->echo = 0;

 if (size < TIPC_PB_MIN_SIZE) {
  pb->buf = ((void*)0);
 } else if (raw) {
  pb->buf[0] = 0;
  pb->buf[size - 1] = ~0;
 }
}
