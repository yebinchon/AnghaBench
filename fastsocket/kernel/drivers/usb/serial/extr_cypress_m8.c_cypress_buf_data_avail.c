
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cypress_buf {unsigned int buf_size; unsigned int buf_put; unsigned int buf_get; } ;



__attribute__((used)) static unsigned int cypress_buf_data_avail(struct cypress_buf *cb)
{
 if (cb != ((void*)0))
  return (cb->buf_size + cb->buf_put - cb->buf_get)
       % cb->buf_size;
 else
  return 0;
}
