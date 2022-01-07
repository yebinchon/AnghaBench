
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl2303_buf {struct pl2303_buf* buf_buf; } ;


 int kfree (struct pl2303_buf*) ;

__attribute__((used)) static void pl2303_buf_free(struct pl2303_buf *pb)
{
 if (pb) {
  kfree(pb->buf_buf);
  kfree(pb);
 }
}
