
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oti6858_buf {unsigned int buf_size; unsigned int buf_put; unsigned int buf_get; } ;



__attribute__((used)) static unsigned int oti6858_buf_data_avail(struct oti6858_buf *pb)
{
 if (pb == ((void*)0))
  return 0;
 return (pb->buf_size + pb->buf_put - pb->buf_get) % pb->buf_size;
}
