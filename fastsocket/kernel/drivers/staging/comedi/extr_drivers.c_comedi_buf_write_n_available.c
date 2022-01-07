
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_async {unsigned int buf_read_count; unsigned int prealloc_bufsz; unsigned int buf_write_alloc_count; int subdevice; } ;


 unsigned int bytes_per_sample (int ) ;
 int smp_mb () ;

unsigned int comedi_buf_write_n_available(struct comedi_async *async)
{
 unsigned int free_end;
 unsigned int nbytes;

 if (async == ((void*)0))
  return 0;

 free_end = async->buf_read_count + async->prealloc_bufsz;
 nbytes = free_end - async->buf_write_alloc_count;
 nbytes -= nbytes % bytes_per_sample(async->subdevice);




 smp_mb();
 return nbytes;
}
