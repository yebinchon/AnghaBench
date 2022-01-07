
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edge_buf {unsigned int buf_size; unsigned int buf_put; unsigned int buf_get; } ;



__attribute__((used)) static unsigned int edge_buf_data_avail(struct edge_buf *eb)
{
 if (eb == ((void*)0))
  return 0;
 return ((eb->buf_size + eb->buf_put - eb->buf_get) % eb->buf_size);
}
