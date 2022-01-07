
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_async {unsigned int buf_read_alloc_count; unsigned int munge_count; } ;


 int smp_rmb () ;

unsigned comedi_buf_read_alloc(struct comedi_async *async, unsigned nbytes)
{
 if ((int)(async->buf_read_alloc_count + nbytes - async->munge_count) >
     0) {
  nbytes = async->munge_count - async->buf_read_alloc_count;
 }
 async->buf_read_alloc_count += nbytes;


 smp_rmb();
 return nbytes;
}
