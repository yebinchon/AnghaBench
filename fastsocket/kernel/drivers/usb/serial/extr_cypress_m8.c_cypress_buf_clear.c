
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cypress_buf {int buf_put; int buf_get; } ;



__attribute__((used)) static void cypress_buf_clear(struct cypress_buf *cb)
{
 if (cb != ((void*)0))
  cb->buf_get = cb->buf_put;

}
