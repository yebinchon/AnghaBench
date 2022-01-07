
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_async {scalar_t__ buf_write_ptr; scalar_t__ prealloc_buf; int events; } ;


 int COMEDI_CB_ERROR ;
 unsigned int comedi_buf_write_alloc_strict (struct comedi_async*,int) ;
 int comedi_buf_write_free (struct comedi_async*,int) ;

int comedi_buf_put(struct comedi_async *async, short x)
{
 unsigned int n = comedi_buf_write_alloc_strict(async, sizeof(short));

 if (n < sizeof(short)) {
  async->events |= COMEDI_CB_ERROR;
  return 0;
 }
 *(short *)(async->prealloc_buf + async->buf_write_ptr) = x;
 comedi_buf_write_free(async, sizeof(short));
 return 1;
}
