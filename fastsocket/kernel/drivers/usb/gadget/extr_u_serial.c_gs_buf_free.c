
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_buf {int * buf_buf; } ;


 int kfree (int *) ;

__attribute__((used)) static void gs_buf_free(struct gs_buf *gb)
{
 kfree(gb->buf_buf);
 gb->buf_buf = ((void*)0);
}
