
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_async {unsigned int buf_read_count; unsigned int prealloc_bufsz; unsigned int buf_write_alloc_count; } ;


 int smp_mb () ;

unsigned int comedi_buf_write_alloc(struct comedi_async *async,
        unsigned int nbytes)
{
 unsigned int free_end = async->buf_read_count + async->prealloc_bufsz;

 if ((int)(async->buf_write_alloc_count + nbytes - free_end) > 0) {
  nbytes = free_end - async->buf_write_alloc_count;
 }
 async->buf_write_alloc_count += nbytes;


 smp_mb();
 return nbytes;
}
