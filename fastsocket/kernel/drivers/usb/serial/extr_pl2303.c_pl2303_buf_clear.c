
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl2303_buf {int buf_put; int buf_get; } ;



__attribute__((used)) static void pl2303_buf_clear(struct pl2303_buf *pb)
{
 if (pb != ((void*)0))
  pb->buf_get = pb->buf_put;

}
