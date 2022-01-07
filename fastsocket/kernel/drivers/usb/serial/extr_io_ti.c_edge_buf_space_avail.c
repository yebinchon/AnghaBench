
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edge_buf {int buf_size; int buf_get; int buf_put; } ;



__attribute__((used)) static unsigned int edge_buf_space_avail(struct edge_buf *eb)
{
 if (eb == ((void*)0))
  return 0;
 return ((eb->buf_size + eb->buf_get - eb->buf_put - 1) % eb->buf_size);
}
