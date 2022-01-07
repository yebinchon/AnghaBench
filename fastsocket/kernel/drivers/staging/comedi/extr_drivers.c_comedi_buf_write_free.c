
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_async {unsigned int buf_write_count; unsigned int buf_write_alloc_count; unsigned int buf_write_ptr; unsigned int munge_count; unsigned int prealloc_bufsz; } ;


 int comedi_buf_munge (struct comedi_async*,unsigned int) ;
 int printk (char*) ;

unsigned comedi_buf_write_free(struct comedi_async *async, unsigned int nbytes)
{
 if ((int)(async->buf_write_count + nbytes -
    async->buf_write_alloc_count) > 0) {
  printk
      ("comedi: attempted to write-free more bytes than have been write-allocated.\n");
  nbytes = async->buf_write_alloc_count - async->buf_write_count;
 }
 async->buf_write_count += nbytes;
 async->buf_write_ptr += nbytes;
 comedi_buf_munge(async, async->buf_write_count - async->munge_count);
 if (async->buf_write_ptr >= async->prealloc_bufsz) {
  async->buf_write_ptr %= async->prealloc_bufsz;
 }
 return nbytes;
}
