
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edge_buf {struct edge_buf* buf_buf; } ;


 int kfree (struct edge_buf*) ;

__attribute__((used)) static void edge_buf_free(struct edge_buf *eb)
{
 if (eb) {
  kfree(eb->buf_buf);
  kfree(eb);
 }
}
