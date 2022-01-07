
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_buf {int buf_size; int buf_get; int buf_put; } ;



__attribute__((used)) static unsigned gs_buf_space_avail(struct gs_buf *gb)
{
 return (gb->buf_size + gb->buf_get - gb->buf_put - 1) % gb->buf_size;
}
