
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_buf {int buf_put; int buf_get; } ;



__attribute__((used)) static void gs_buf_clear(struct gs_buf *gb)
{
 gb->buf_get = gb->buf_put;

}
