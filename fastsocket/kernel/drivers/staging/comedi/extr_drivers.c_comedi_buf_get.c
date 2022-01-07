
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_async {scalar_t__ buf_read_ptr; scalar_t__ prealloc_buf; } ;


 int comedi_buf_read_alloc (struct comedi_async*,int) ;
 int comedi_buf_read_free (struct comedi_async*,int) ;
 unsigned int comedi_buf_read_n_available (struct comedi_async*) ;

int comedi_buf_get(struct comedi_async *async, short *x)
{
 unsigned int n = comedi_buf_read_n_available(async);

 if (n < sizeof(short))
  return 0;
 comedi_buf_read_alloc(async, sizeof(short));
 *x = *(short *)(async->prealloc_buf + async->buf_read_ptr);
 comedi_buf_read_free(async, sizeof(short));
 return 1;
}
