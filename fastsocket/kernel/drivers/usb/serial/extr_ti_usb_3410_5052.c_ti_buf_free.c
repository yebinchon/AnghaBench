
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct circ_buf {struct circ_buf* buf; } ;


 int kfree (struct circ_buf*) ;

__attribute__((used)) static void ti_buf_free(struct circ_buf *cb)
{
 kfree(cb->buf);
 kfree(cb);
}
