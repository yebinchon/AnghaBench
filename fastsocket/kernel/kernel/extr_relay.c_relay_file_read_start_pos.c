
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rchan_buf {size_t subbufs_consumed; size_t bytes_consumed; size_t* padding; TYPE_1__* chan; } ;
struct TYPE_2__ {size_t subbuf_size; size_t n_subbufs; } ;



__attribute__((used)) static size_t relay_file_read_start_pos(size_t read_pos,
     struct rchan_buf *buf)
{
 size_t read_subbuf, padding, padding_start, padding_end;
 size_t subbuf_size = buf->chan->subbuf_size;
 size_t n_subbufs = buf->chan->n_subbufs;
 size_t consumed = buf->subbufs_consumed % n_subbufs;

 if (!read_pos)
  read_pos = consumed * subbuf_size + buf->bytes_consumed;
 read_subbuf = read_pos / subbuf_size;
 padding = buf->padding[read_subbuf];
 padding_start = (read_subbuf + 1) * subbuf_size - padding;
 padding_end = (read_subbuf + 1) * subbuf_size;
 if (read_pos >= padding_start && read_pos < padding_end) {
  read_subbuf = (read_subbuf + 1) % n_subbufs;
  read_pos = read_subbuf * subbuf_size;
 }

 return read_pos;
}
