
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cypress_buf {int buf_size; int buf_get; int buf_put; } ;



__attribute__((used)) static unsigned int cypress_buf_space_avail(struct cypress_buf *cb)
{
 if (cb != ((void*)0))
  return (cb->buf_size + cb->buf_get - cb->buf_put - 1)
       % cb->buf_size;
 else
  return 0;
}
