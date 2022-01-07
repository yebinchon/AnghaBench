
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oti6858_buf {int buf_put; int buf_get; } ;



__attribute__((used)) static void oti6858_buf_clear(struct oti6858_buf *pb)
{
 if (pb != ((void*)0)) {

  pb->buf_get = pb->buf_put;
 }
}
