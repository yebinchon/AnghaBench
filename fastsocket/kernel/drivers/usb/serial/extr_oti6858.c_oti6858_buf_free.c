
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oti6858_buf {struct oti6858_buf* buf_buf; } ;


 int kfree (struct oti6858_buf*) ;

__attribute__((used)) static void oti6858_buf_free(struct oti6858_buf *pb)
{
 if (pb) {
  kfree(pb->buf_buf);
  kfree(pb);
 }
}
