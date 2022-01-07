
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edge_buf {int buf_put; int buf_get; } ;



__attribute__((used)) static void edge_buf_clear(struct edge_buf *eb)
{
 if (eb != ((void*)0))
  eb->buf_get = eb->buf_put;

}
