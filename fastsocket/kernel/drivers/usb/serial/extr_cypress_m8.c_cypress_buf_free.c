
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cypress_buf {struct cypress_buf* buf_buf; } ;


 int kfree (struct cypress_buf*) ;

__attribute__((used)) static void cypress_buf_free(struct cypress_buf *cb)
{
 if (cb) {
  kfree(cb->buf_buf);
  kfree(cb);
 }
}
