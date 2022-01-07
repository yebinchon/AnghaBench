
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct circ_buf {int * buf; } ;


 int AIRCABLE_BUF_SIZE ;
 int GFP_KERNEL ;
 int kfree (struct circ_buf*) ;
 void* kmalloc (int,int ) ;
 int serial_buf_clear (struct circ_buf*) ;

__attribute__((used)) static struct circ_buf *serial_buf_alloc(void)
{
 struct circ_buf *cb;
 cb = kmalloc(sizeof(struct circ_buf), GFP_KERNEL);
 if (cb == ((void*)0))
  return ((void*)0);
 cb->buf = kmalloc(AIRCABLE_BUF_SIZE, GFP_KERNEL);
 if (cb->buf == ((void*)0)) {
  kfree(cb);
  return ((void*)0);
 }
 serial_buf_clear(cb);
 return cb;
}
